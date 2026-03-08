#!/usr/bin/env python3
"""
Update news stubs with full article text from iran_war_news_full_texts.md.
Adds or replaces ## Full story so stubs with incomplete/partial text get the
collection version.
"""
import re
from pathlib import Path

PROJECT = Path(__file__).resolve().parent.parent
FULL_TEXTS_PATH = PROJECT / "iran_war_news_full_texts.md"
NEWS_DIR = PROJECT / "news"


def normalize_url(u: str) -> str:
    return (u or "").strip().rstrip("/")


def parse_full_texts(path: Path) -> dict[str, str]:
    """Return dict: normalized_url -> body_text (from after Date line to next --- or ## Article)."""
    text = path.read_text(encoding="utf-8", errors="replace")
    blocks = re.split(r"\n## Article \d+:", text)
    out = {}
    for block in blocks[1:]:
        m = re.search(r"\*\*Source:\*\* \[([^\]]+)\]\(([^)]+)\)", block, re.IGNORECASE)
        if not m:
            continue
        url = normalize_url(m.group(2).strip())
        date_end = re.search(r"\*\*Date:\*\*[^\n]*\n+", block)
        body_start = date_end.end() if date_end else (block.find("\n\n") + 2 if "\n\n" in block else 0)
        body = block[body_start:].strip()
        if "---" in body:
            body = body.split("\n---")[0].strip()
        out[url] = body
    return out


def get_stub_url(content: str) -> str | None:
    head = "\n".join(content.split("\n")[:35])
    m = re.search(r"\*\*URL:\*\*\s*(https?://[^\s)\]]+)", head)
    if m:
        return normalize_url(m.group(1).strip())
    m = re.search(r"\]\((https?://[^)]+)\)", head)
    if m:
        return normalize_url(m.group(1).strip())
    m = re.search(r"https?://[^\s)\]\"]+", head)
    if m:
        return normalize_url(m.group(0).strip())
    return None


def replace_full_story_section(content: str, new_body: str) -> str:
    """Replace existing ## Full story (and everything after) or append if missing."""
    if re.search(r"^## Full (story|article)\s*$", content, re.M | re.IGNORECASE):
        before = re.split(r"\n## Full (story|article)\s*\n", content, maxsplit=1, flags=re.IGNORECASE)[0]
        before = before.rstrip()
        return before + "\n\n## Full story\n\n" + new_body + "\n"
    content = content.rstrip()
    return content + "\n\n---\n\n## Full story\n\n" + new_body + "\n"


def main():
    if not FULL_TEXTS_PATH.exists():
        print(f"Missing {FULL_TEXTS_PATH}")
        return
    articles = parse_full_texts(FULL_TEXTS_PATH)
    print(f"Parsed {len(articles)} articles from full texts.")

    updated = []
    for stub_path in sorted(NEWS_DIR.glob("*.md")):
        if stub_path.name.startswith("STUBS_") or "transcript_" in stub_path.name:
            continue
        content = stub_path.read_text(encoding="utf-8", errors="replace")
        stub_url = get_stub_url(content)
        if not stub_url:
            continue
        match_key = None
        for key in articles:
            if key == stub_url:
                match_key = key
                break
            k, s = key.rstrip("/"), stub_url.rstrip("/")
            if k == s:
                match_key = key
                break
        if not match_key:
            continue
        body = articles[match_key]
        new_content = replace_full_story_section(content, body)
        if new_content != content:
            stub_path.write_text(new_content, encoding="utf-8")
            updated.append(stub_path.name)
            print(f"Updated: {stub_path.name}")

    print(f"\nUpdated {len(updated)} stubs.")


if __name__ == "__main__":
    main()

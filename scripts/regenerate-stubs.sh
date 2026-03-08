#!/usr/bin/env bash
# Regenerate news/STUBS_WITHOUT_FULL_ARTICLE_URLS.md: list source URLs for every
# news/*.md file that does NOT contain "## Full story" or "## Full article".
# Run from repo root.

set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NEWS="$ROOT/news"
STUBS="$NEWS/STUBS_WITHOUT_FULL_ARTICLE_URLS.md"

HEADER='# News stubs that do not contain the full article: source URLs

This document lists the **source URL** of every news stub in `news/` that does **not** contain a "## Full story" or "## Full article" section. For these items, only a summary (tl;dr) or excerpt is stored locally; the full text lives at the URL below.

**How to regenerate:** From the repo root, run `./scripts/regenerate-stubs.sh` (or `bash scripts/regenerate-stubs.sh`). The script finds all `news/*.md` files that lack a `## Full story` or `## Full article` section and extracts their `**URL:**` line, then overwrites this file with the header above and the URL list. If you add full text to a stub, re-run the script to remove its URL from this list.

---
'

echo "$HEADER" > "$STUBS"

for f in "$NEWS"/*.md; do
  [ -f "$f" ] || continue
  [ "$(basename "$f")" = "STUBS_WITHOUT_FULL_ARTICLE_URLS.md" ] && continue
  if ! grep -q '^## Full story$\|^## Full article$' "$f" 2>/dev/null; then
    url=$(grep -m1 '^\*\*URL:\*\*' "$f" 2>/dev/null | sed 's/^\*\*URL:\*\*[[:space:]]*//;s/[[:space:]]*$//')
    if [ -n "$url" ] && [ "$url" != "(Daily Telegraph, paywalled)" ] && [ "${url#http}" != "$url" ]; then
      echo "- $url" >> "$STUBS"
    fi
  fi
done

echo "Regenerated $STUBS"

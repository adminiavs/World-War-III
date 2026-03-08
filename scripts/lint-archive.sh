#!/usr/bin/env bash
# Lint news/ and transcripts/ for document schema and filename conventions.
# Required: # Title, **Date:**, **Source:**, **URL:**, ## tl;dr
# Filenames: (YYYY-MM-DD|undated)_source_slug.md (lowercase, hyphens, no spaces).
# Run from repo root. Exit 1 if any check fails.

set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NEWS="$ROOT/news"
TRANSCRIPTS="$ROOT/transcripts"
FAIL=0

# Filename pattern: date_source_slug.md (date = YYYY-MM-DD or undated; slug = lowercase, hyphens)
FILENAME_PATTERN='^(([0-9]{4}-[0-9]{2}-[0-9]{2})|undated)_[a-z0-9]+(_[a-z0-9-]+)*\.md$'

check_file() {
  local f="$1"
  local base="$2"
  local name="$(basename "$f")"
  local err=0

  # Skip index/stub list
  case "$name" in
    STUBS_WITHOUT_FULL_ARTICLE_URLS.md) return 0 ;;
  esac

  # Filename: must match pattern (allow relaxed for legacy files with e.g. youtube ID suffixes)
  if ! echo "$name" | grep -qE '^(undated|[0-9]{4}-[0-9]{2}-[0-9]{2})_[a-z0-9].*\.md$'; then
    echo "  FILENAME: $base/$name (expected (YYYY-MM-DD|undated)_source_slug.md, lowercase hyphens)"
    err=1
  fi

  # Required fields
  grep -q '^# ' "$f" 2>/dev/null || { echo "  TITLE: $base/$name (missing # Title on line 1)"; err=1; }
  grep -q '^\*\*Date:\*\*' "$f" 2>/dev/null || { echo "  DATE: $base/$name (missing **Date:**)"; err=1; }
  grep -q '^\*\*Source:\*\*' "$f" 2>/dev/null || { echo "  SOURCE: $base/$name (missing **Source:**)"; err=1; }
  grep -q '^\*\*URL:\*\*' "$f" 2>/dev/null || { echo "  URL: $base/$name (missing **URL:**)"; err=1; }
  grep -q '^## tl;dr$' "$f" 2>/dev/null || { echo "  TLDR: $base/$name (missing ## tl;dr section)"; err=1; }

  [ $err -eq 1 ] && FAIL=1
}

echo "Linting news/..."
for f in "$NEWS"/*.md; do
  [ -f "$f" ] && check_file "$f" "news"
done

echo "Linting transcripts/..."
for f in "$TRANSCRIPTS"/*.md; do
  [ -f "$f" ] && check_file "$f" "transcripts"
done

if [ $FAIL -eq 1 ]; then
  echo "One or more checks failed (see above)."
  exit 1
fi
echo "Lint passed."

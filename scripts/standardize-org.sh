#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <github-org>"
  exit 1
fi

ORG="$1"
OUT_DIR="output"
ROSTER="$OUT_DIR/${ORG}-repos.txt"
CHECKLIST="$OUT_DIR/${ORG}-checklist.md"

mkdir -p "$OUT_DIR"

echo "Collecting repo roster for org: $ORG"
gh repo list "$ORG" --limit 200 --json name --jq '.[].name' | sort > "$ROSTER"

echo "Writing checklist: $CHECKLIST"
{
  echo "# ${ORG} Standardization Checklist"
  echo
  echo "Generated on $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  echo
  while IFS= read -r repo; do
    echo "## ${repo}"
    echo "- [ ] Sync latest default branch"
    echo "- [ ] Ensure README and CONTRIBUTING are current"
    echo "- [ ] Ensure .github templates/workflows are present"
    echo "- [ ] Ensure .github/agents contains current fleet where needed"
    echo "- [ ] Open or update PR"
    echo
  done < "$ROSTER"
} > "$CHECKLIST"

echo "Done."
echo "- Roster: $ROSTER"
echo "- Checklist: $CHECKLIST"

#!/usr/bin/env bash
# Fail fast if this is not the public open-pack tree.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

ok=1
for p in \
  scripts/review_sandbox.sh \
  docs/PASTE_GROK46_REVIEW.md \
  docs/START.md \
  OPEN_IN_CURSOR.md \
  .cursorrules
do
  if [[ ! -e "$p" ]]; then
    echo "MISSING: $p"
    ok=0
  else
    echo "OK: $p"
  fi
done

echo "ROOT=$ROOT"

if [[ "$ok" -ne 1 ]]; then
  echo ""
  echo "RESULT: FAIL — wrong or incomplete workspace"
  echo "Clone https://github.com/AINav01/ainav-control-plane-open.git"
  echo "Cursor: File → Open Folder → ainav-control-plane-open (repo root)"
  exit 1
fi

echo "RESULT: PASS — Cursor workspace looks like ainav-control-plane-open"
exit 0

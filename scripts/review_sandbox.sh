#!/usr/bin/env bash
# Public open pack: workspace gate for Grok 4.6 deep review (no private monorepo required).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

echo "=== 0. Workspace (public open pack) ==="
bash "$ROOT/scripts/check_cursor_workspace.sh"

echo ""
echo "=== 1. Review brief present ==="
if [[ ! -f docs/PASTE_GROK46_REVIEW.md ]]; then
  echo "FAIL: docs/PASTE_GROK46_REVIEW.md missing"
  exit 1
fi
echo "OK: docs/PASTE_GROK46_REVIEW.md"
grep -q "Job C only" docs/PASTE_GROK46_REVIEW.md
echo "OK: Job C brief markers"

echo ""
echo "RESULT: PASS — public workspace + review brief ready"
echo "NOTE: Full make gold / agent_gov fixtures live in private AINav01/ainav-control-plane"
echo "      For this open pack, paste RESULT: PASS below into Grok 4.6 with PASTE_GROK46_REVIEW.md"
echo ""
echo "Cursor: Open Folder = this repo root ($ROOT)"
echo "Grok 4.6 paste: docs/PASTE_GROK46_REVIEW.md (BEGIN→END) + this output"
exit 0

# Open this folder in Cursor

**This directory is the project.** Do not use Cursor “New Project” or an empty `/workspace`.

## 1. Clone (**public — no token**)

```bash
git clone https://github.com/AINav01/ainav-control-plane-open.git
cd ainav-control-plane-open
git pull
```

## 2. Prove workspace

```bash
bash scripts/check_cursor_workspace.sh
bash scripts/review_sandbox.sh
```

Both must PASS.

## 3. Cursor

**File → Open Folder** → select **`ainav-control-plane-open`** (contains this file, `scripts/`, `docs/`, `.cursorrules`).

Model: **Grok 4.6**

## 4. Deep review

Paste from: https://github.com/AINav01/ainav-control-plane-open/blob/main/docs/PASTE_GROK46_REVIEW.md  

Include sandbox output in the same chat.

If Cursor path is `/workspace` with no `scripts/review_sandbox.sh` → wrong folder.

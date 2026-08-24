# AINav Control Plane — **public** open pack

**Public.** Clone with **no** GitHub token.

```bash
git clone https://github.com/AINav01/ainav-control-plane-open.git
cd ainav-control-plane-open
git pull
bash scripts/check_cursor_workspace.sh
bash scripts/review_sandbox.sh
```

Then: **Cursor → File → Open Folder → `ainav-control-plane-open`** → model **Grok 4.6** → paste `docs/PASTE_GROK46_REVIEW.md` (BEGIN→END) + sandbox output.

| Repo | Visibility | Use |
|------|------------|-----|
| **[ainav-control-plane-open](https://github.com/AINav01/ainav-control-plane-open)** | **Public** | Cloud Agent, Cursor review, no PAT |
| [ainav-control-plane](https://github.com/AINav01/ainav-control-plane) | Private | Full monorepo + `make gold` |

## Job C (one line)

Dual humans + `action_hash` + single-use consume + fail-closed → SoR only after `ok`.

## Links

- Paste: [docs/PASTE_GROK46_REVIEW.md](docs/PASTE_GROK46_REVIEW.md)
- Open in Cursor: [OPEN_IN_CURSOR.md](OPEN_IN_CURSOR.md)
- Start: [docs/START.md](docs/START.md)

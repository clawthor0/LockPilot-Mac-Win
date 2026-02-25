# LockPilot Mac/Win Monorepo

Single repo for **shared frontend** + **platform-specific backends**.

## Layout

- `packages/shared-ui/` → single source of truth for frontend UI
- `apps/desktop-mac/` → macOS Tauri app/backend
- `apps/desktop-windows/` → Windows Tauri app/backend
- `.github/workflows/` → CI/CD for dev/main builds
- `docs/UPDATE_GUIDE.md` → what to do for frontend/backend-only updates

## Core Rule

If UI changes, update **only** `packages/shared-ui/` and sync into both apps before pushing.

## Quick commands

```bash
# From repo root
bash scripts/sync-shared-ui.sh

# optional verification
bash scripts/check-ui-sync.sh
```

## Branch flow

- `dev` → prerelease/dev builds
- `main` → stable builds

CI builds both platforms from the same commit and publishes platform artifacts.

## Existing repos stay intact

This monorepo does **not** delete or alter your legacy repos:
- `maxacode/LockPilotMac`
- `maxacode/LockPilot-Windows`

It provides a unified future workflow.

#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SHARED="$ROOT/packages/shared-ui"
MAC_UI="$ROOT/apps/desktop-mac/ui"
WIN_UI="$ROOT/apps/desktop-windows/ui"

rsync -a --delete "$SHARED/" "$MAC_UI/"
rsync -a --delete "$SHARED/" "$WIN_UI/"

echo "Shared UI synced to mac + windows apps."

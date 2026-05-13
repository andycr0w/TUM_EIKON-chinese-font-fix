#!/usr/bin/env bash
set -e

FONT_DIR="$HOME/.local/share/fonts"

rm -f "$FONT_DIR"/NotoSansCJKsc-*.otf

fc-cache -fv "$FONT_DIR"

echo "Done."

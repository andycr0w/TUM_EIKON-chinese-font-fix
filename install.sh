#!/usr/bin/env bash
set -e

FONT_DIR="$HOME/.local/share/fonts"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Installing local Chinese fonts..."

mkdir -p "$FONT_DIR"

cp "$SCRIPT_DIR"/fonts/* "$FONT_DIR"/

fc-cache -fv "$FONT_DIR"

echo
echo "==> Installed fonts:"
fc-list :lang=zh | head

echo
echo "==> Test:"
printf "中文测试\n"

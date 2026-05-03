#!/usr/bin/env bash
# Install one-layer-deeper into your project's Claude skills directory

set -e

SKILLS_DIR="${1:-.claude/skills}"

mkdir -p "$SKILLS_DIR"
cp skills/one-layer-deeper.md "$SKILLS_DIR/"

echo "Installed one-layer-deeper to $SKILLS_DIR/one-layer-deeper.md"

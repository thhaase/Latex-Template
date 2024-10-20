#!/bin/bash

SOURCE_DIR="/home/thomas/Insync/thhaase.soz@gmail.com/GoogleDrive/Latex"

SOURCE_DIR=$(eval echo $SOURCE_DIR)

TARGET_DIR="latex"

mkdir -p "$TARGET_DIR"

cp -a "$SOURCE_DIR/main.tex" "$TARGET_DIR"
cp -a "$SOURCE_DIR/main.pdf" "$TARGET_DIR"

original_target=$(readlink -f "$SOURCE_DIR/Bibliothek.bib")
ln -s "$original_target" "$TARGET_DIR/Bibliothek.bib"

echo "📁$TARGET_DIR setup complete ✨"


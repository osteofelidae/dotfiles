#!/bin/bash

# Source, dest
SOURCE_DIR="$HOME/.config"
TARGET_DIR="dotfiles"

# .config/subfolders
SUBFOLDER_LIST="subfolders.txt"

# Copy each subfolder
while IFS= read -r subfolder; do

  SRC_PATH="$SOURCE_DIR/$subfolder"
  DEST_PATH="$TARGET_DIR/$subfolder"

  if [[ -d "$SRC_PATH" ]]; then
    echo "Copying $SRC_PATH to $DEST_PATH..."
    cp -r "$SRC_PATH" "$DEST_PATH"
  else
    echo "Warning: $SRC_PATH does not exist or is not a directory."
  fi
done < "$SUBFOLDER_LIST"

echo "Done."

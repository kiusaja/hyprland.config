#!/bin/bash

# Skript zum installieren der Symlinks auf fürs Sachen wie Waybar und co.

DOT_DIR="$HOME/kiusaja"
CONFIG_DIR="$HOME/.config"

echo "beep boop Symlinks hihi:..."

cd "$DOT_DIR" || { echo "Verzeichnis $DOT_DIR wurde nicht gefunden, tja!"; exit 1; }

for item in *; do
    if [[ "$item" == "hypr" || "$item" == "install.sh" ]]; then
        echo "SKIPPPPPPP!!!1!!!: $item"
        continue
    fi

    ln -snf "$DOT_DIR/$item" "$CONFIG_DIR/$item"
    
    echo "Easy peasy geschafft: $item -> $CONFIG_DIR/$item"
done

ln -snf "$DOT_DIR/.zshrc" "$HOME/.zshrc"
echo "Easy peasy geschafft: .zshrc -> $HOME/.zshrc"

echo "Jo buddy du hast es geschafft"

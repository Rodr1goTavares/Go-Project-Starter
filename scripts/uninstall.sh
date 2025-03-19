
#!/bin/sh

LOCAL_BIN="$HOME/.local/bin/go-start"
GLOBAL_BIN="/usr/local/bin/go-start"

if [ -f "$LOCAL_BIN" ]; then
    echo "Removing go-project-starter from $LOCAL_BIN..."
    rm -f "$LOCAL_BIN"
fi

if [ -f "$GLOBAL_BIN" ]; then
    echo "Removing go-project-starter from $GLOBAL_BIN..."
    sudo rm -f "$GLOBAL_BIN"
fi

CONFIG_FILE="$HOME/.bashrc"
if grep -q "$HOME/.local/bin" "$CONFIG_FILE"; then
    echo "Removing $HOME/.local/bin from $CONFIG_FILE"
    sed -i '/\.local\/bin/d' "$CONFIG_FILE"
fi

CONFIG_FILE="$HOME/.zshrc"
if grep -q "$HOME/.local/bin" "$CONFIG_FILE"; then
    echo "Removing $HOME/.local/bin from $CONFIG_FILE"
    sed -i '/\.local\/bin/d' "$CONFIG_FILE"
fi

if [ -f "$HOME/.config/fish/config.fish" ]; then
    echo "Removing $HOME/.local/bin from config.fish"
    sed -i '/\.local\/bin/d' "$HOME/.config/fish/config.fish"
fi

echo "Go Project Starter removed ! Restart terminal to apply changes."


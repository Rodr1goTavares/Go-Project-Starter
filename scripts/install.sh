
#!/bin/sh

# Detect the operating system and architecture
OS=$(uname -s)
ARCH=$(uname -m)

# Set the file name based on the operating system
case "$OS" in
    Linux)   FILE="go-project-starter" ;;  # Correct file name without extension
    Darwin)  FILE="go-project-starter" ;;  # Correct file name without extension
    *) echo "System not supported!" && exit 1 ;;
esac

# GitHub repository and version configuration
GITHUB_REPO="Rodr1goTavares/Go-Project-Starter"
VERSION="latest"  # Or specify a version like "v1.0.0"
URL="https://github.com/$GITHUB_REPO/releases/latest/download/$FILE"  # Corrected URL

# Installation directory path
BIN_DIR="$HOME/.local/bin"
BIN_PATH="$BIN_DIR/go-start

# Create the directory if needed
mkdir -p "$BIN_DIR"

# Download the binary file
echo "Downloading $FILE from $URL..."
wget -q --show-progress -O "$BIN_PATH" "$URL"

# Make the binary executable
chmod +x "$BIN_PATH"

# Check if the directory is in PATH
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
    echo "Adding $BIN_DIR to PATH..."
    case "$SHELL" in
        */bash) echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc" ;;
        */zsh)  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc" ;;
        */fish) echo 'set -Ux PATH $HOME/.local/bin $PATH' >> "$HOME/.config/fish/config.fish" ;;
        *)      echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.profile" ;;
    esac
fi

echo "Installation complete! Restart your terminal to use."



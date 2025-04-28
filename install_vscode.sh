#!/bin/bash

# Don't forget to make the install_vscode.sh script executable
# chmod +x install_vscode.sh

# Make plugins_install.sh executable
chmod +x ./install_plugins.sh

# Running install_plugins.sh
./install_plugins.sh

# Copy VSCode config files
cp -a ./.config/. ~/.config/Code/User/
cp -a ./.vscode/. ~/.config/Code/User/

# Directory for font installation
FONT_FILE="JetBrainsMono-Regular.ttf"
FONT_DIR="$HOME/.local/share/fonts/JetBrainsMono"

# Check if the font file exists in the current directory
if [ ! -f "$FONT_FILE" ]; then
  echo "Font $FONT_FILE not found in the current directory. Please place it here."
  exit 1
fi

# Create the directory for the font if it doesn't exist
mkdir -p "$FONT_DIR"

# Copy the font to the directory
cp "$FONT_FILE" "$FONT_DIR"

# Update font cache
fc-cache -fv

echo "JetBrains Mono font successfully installed."
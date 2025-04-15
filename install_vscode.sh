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

# Installing JetBrainsMono-Regular.ttf font if not already installed
FONT_NAME="JetBrainsMono-Regular.ttf"
FONT_DIR="$HOME/Library/Fonts"

if [ ! -f "$FONT_DIR/$FONT_NAME" ]; then
  echo "Installing JetBrains Mono font..."
  cp "./$FONT_NAME" "$FONT_DIR"
else
  echo "JetBrains Mono font is already installed."
fi
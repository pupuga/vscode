#!/bin/bash

# Don't forget to make the install_vscode.sh script executable
# chmod +x install_vscode.sh

# Make plugins_install.sh executable
chmod +x ./install_plugins.sh

# Running install_plugins.sh
./install_plugins.sh

# Move files to ~/.config/Code/User
cp -a ./.config/. ~/.config/Code/User/
cp -a ./.vscode/. ~/.config/Code/User/

# Installing JetBrainsMono-Regular.ttf font if not already installed
if ! fc-list | grep -qi 'JetBrainsMono-Regular'; then
  echo 'Installing JetBrains Mono font...'
  sudo cp ./JetBrainsMono-Regular.ttf /usr/share/fonts/truetype/
  sudo fc-cache -fv
else
  echo 'JetBrains Mono font is already installed.'
fi

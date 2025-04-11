#!/bin/bash

# Don't forget to make the install_vscode.sh script executable:
# chmod +x install_vscode.sh

# This script generates a script to install all currently installed VS Code extensions.
# It outputs the installation commands to a new script file and makes it executable.
# To use:
# 1. Run this script: ./build_install.sh
# 2. Run the generated script to install extensions, settings, and font.

# Generate install script with extension installation commands
echo "#!/bin/bash" > install_vscode.sh
echo "" >> install_vscode.sh

# Reminder to make install_vscode.sh executable
echo "# Don't forget to make the install_vscode.sh script executable" >> install_vscode.sh
echo "# chmod +x install_vscode.sh" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Make create_settings.sh executable" >> install_vscode.sh
echo "chmod +x ./create_settings.sh" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Run the create_settings.sh to generate settings.json in the .config directory" >> install_vscode.sh
echo "echo \"Running create_settings.sh to generate settings.json...\"" >> install_vscode.sh
echo "./create_settings.sh" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Make create_configs.sh executable" >> install_vscode.sh
echo "chmod +x ./create_configs.sh" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Run the create_configs.sh to generate the necessary configurations" >> install_vscode.sh
echo "echo \"Running create_configs.sh to generate the necessary configurations...\"" >> install_vscode.sh
echo "./create_configs.sh" >> install_vscode.sh
echo "" >> install_vscode.sh

# Move .config directory to ~/.config/Code/User
echo "# Move .config directory to ~/.config/Code/User" >> install_vscode.sh
echo "mv ./.config ~/.config/Code/User" >> install_vscode.sh
echo "" >> install_vscode.sh

# Move settings.json from .vscode to ~/.config/Code/User
echo "# Move settings.json from .vscode to ~/.config/Code/User" >> install_vscode.sh
echo "mv ./.vscode/settings.json ~/.config/Code/User/settings.json" >> install_vscode.sh
echo "rm -rf ./.vscode" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Installing VS Code extensions" >> install_vscode.sh
code --list-extensions | xargs -I{} echo "code --install-extension {} --force" >> install_vscode.sh
echo "" >> install_vscode.sh

echo "# Installing JetBrainsMono-Regular.ttf font if not already installed" >> install_vscode.sh
echo "if ! fc-list | grep -qi 'JetBrainsMono-Regular'; then" >> install_vscode.sh
echo "  echo 'Installing JetBrains Mono font...'" >> install_vscode.sh
echo "  sudo cp ./JetBrainsMono-Regular.ttf /usr/share/fonts/truetype/" >> install_vscode.sh
echo "  sudo fc-cache -fv" >> install_vscode.sh
echo "else" >> install_vscode.sh
echo "  echo 'JetBrains Mono font is already installed.'" >> install_vscode.sh
echo "fi" >> install_vscode.sh
echo "" >> install_vscode.sh

# Inform the user
echo "The extensions installation script has been created: install_vscode.sh"
echo "You can now run the script to install all extensions, settings, and font with:"
echo "./install_vscode.sh"

#!/bin/bash

# Don't forget to make the install_vscode.sh script executable
# chmod +x install_vscode.sh

# Make create_settings.sh executable
chmod +x ./create_settings.sh

# Run the create_settings.sh to generate settings.json in the .config directory
echo "Running create_settings.sh to generate settings.json..."
./create_settings.sh

# Make create_configs.sh executable
chmod +x ./create_configs.sh

# Run the create_configs.sh to generate the necessary configurations
echo "Running create_configs.sh to generate the necessary configurations..."
./create_configs.sh

# Move .config directory to ~/.config/Code/User
mv ./.config ~/.config/Code/User

# Move settings.json from .vscode to ~/.config/Code/User
mv ./.vscode/settings.json ~/.config/Code/User/settings.json
rm -rf ./.vscode

# Installing VS Code extensions
code --install-extension atommaterial.a-file-icon-vscode --force
code --install-extension bmewburn.vscode-intelephense-client --force
code --install-extension bradlc.vscode-tailwindcss --force
code --install-extension dbaeumer.vscode-eslint --force
code --install-extension docker.docker --force
code --install-extension esbenp.prettier-vscode --force
code --install-extension graphql.vscode-graphql-syntax --force
code --install-extension johnbillion.vscode-wordpress-hooks --force
code --install-extension k--kato.intellij-idea-keybindings --force
code --install-extension laravel.vscode-laravel --force
code --install-extension matthiashunt.wordpress-syntax-highlighter --force
code --install-extension mongodb.mongodb-vscode --force
code --install-extension ms-azuretools.vscode-docker --force
code --install-extension ms-playwright.playwright --force
code --install-extension ms-python.black-formatter --force
code --install-extension ms-python.debugpy --force
code --install-extension ms-python.isort --force
code --install-extension ms-python.mypy-type-checker --force
code --install-extension ms-python.python --force
code --install-extension ms-python.vscode-pylance --force
code --install-extension ms-vscode-remote.remote-containers --force
code --install-extension ms-vscode.vscode-typescript-next --force
code --install-extension msjsdiag.vscode-react-native --force
code --install-extension msjsdiag.vscode-react-native-preview --force
code --install-extension oasin.theme-dark-plus-darcula --force
code --install-extension redhat.vscode-xml --force
code --install-extension redhat.vscode-yaml --force
code --install-extension unifiedjs.vscode-mdx --force
code --install-extension visualstudioexptteam.intellicode-api-usage-examples --force
code --install-extension visualstudioexptteam.vscodeintellicode --force
code --install-extension xdebug.php-debug --force

# Installing JetBrainsMono-Regular.ttf font if not already installed
if ! fc-list | grep -qi 'JetBrainsMono-Regular'; then
  echo 'Installing JetBrains Mono font...'
  sudo cp ./JetBrainsMono-Regular.ttf /usr/share/fonts/truetype/
  sudo fc-cache -fv
else
  echo 'JetBrains Mono font is already installed.'
fi


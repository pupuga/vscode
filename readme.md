# VSCode Setup and Configuration

This repository contains a set of scripts for installing and configuring Visual Studio Code (VSCode) with custom settings, extensions, and fonts. 

## Installation

Follow these steps to install and configure Visual Studio Code with the provided scripts:

1. Clone the repository:

   ```bash
   git clone https://github.com/pupuga/vscode.git
   cd vscode

2. You have to change {{name}} to your user name in the /.vscode/settings.json file:

   "eslint.configFile": "/home/{{name}}/.config/Code/User/.eslintrc.json"
   "prettier.configPath": "/home/{{name}}/.config/Code/User/.prettierrc"


3. Run the install_vscode.sh script:
   
   ```bash
   chmod +x install_vscode.sh
   ./install_vscode.sh


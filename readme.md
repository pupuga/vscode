# VSCode Setup and Configuration

This repository contains a set of scripts for installing and configuring Visual Studio Code (VSCode) with custom settings, extensions, and fonts. These scripts automate the process of setting up VSCode for a development environment.

## Files

1. **`install_vscode.sh`**  
   This script generates the `build_install.sh` script, which automates the process of setting up the development environment. It installs Visual Studio Code, applies settings, installs extensions, and configures necessary fonts.

2. **`create_settings.sh`**  
   This script generates the `settings.json` file for VSCode with custom settings like font configuration, code formatting, and editor preferences.

3. **`create_configs.sh`**  
   This script generates configuration files for ESLint and Prettier, which are commonly used for linting and formatting in JavaScript and TypeScript projects.

4. **`build_install.sh`**  
   This script automates the process of setting up the development environment by installing dependencies, building the project, and ensuring everything is configured for a smooth VSCode experience. It can be used to quickly set up a project with all necessary configurations, extensions, and tools to start coding right away.


## Installation

Follow these steps to install and configure Visual Studio Code with the provided scripts:

1. Clone the repository:

   ```bash
   git clone https://github.com/pupuga/vscode.git
   cd vscode

2. Run the install_vscode.sh script:
   
   ```bash
   chmod +x install_vscode.sh
   ./install_vscode.sh


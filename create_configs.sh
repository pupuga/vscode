#!/bin/bash

# Target config path for VSCode global settings
CONFIG_DIR="$HOME/.config/Code/User/.config"

# Create the directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Create the .eslintrc.json file
cat <<EOL > "$CONFIG_DIR/.eslintrc.json"
{
  "env": {
    "browser": true,
    "es2021": true,
    "node": true
  },
  "extends": [
    "eslint:recommended",
    "plugin:react/recommended",
    "plugin:react-hooks/recommended",
    "plugin:@typescript-eslint/recommended"
  ],
  "parser": "@typescript-eslint/parser",
  "parserOptions": {
    "ecmaVersion": "latest",
    "sourceType": "module",
    "ecmaFeatures": {
      "jsx": true
    }
  },
  "plugins": [
    "react",
    "react-hooks",
    "@typescript-eslint"
  ],
  "rules": {
    "react/react-in-jsx-scope": "off",
    "react/prop-types": "off",
    "@typescript-eslint/explicit-module-boundary-types": "off"
  },
  "settings": {
    "react": {
      "version": "detect"
    }
  }
}
EOL

# Create the .prettierrc file
cat <<EOL > "$CONFIG_DIR/.prettierrc"
{
  "singleQuote": true,
  "semi": false,
  "jsxSingleQuote": true,
  "useTabs": true
}
EOL

echo "Configuration files created in: $CONFIG_DIR"

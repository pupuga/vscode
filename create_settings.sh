#!/bin/bash

# Run the following command to give the script execute permissions:
# chmod +x create_settings.sh

# Use the current directory of the script
PROJECT_ROOT="$(pwd)"

# Define the global .config directory (replace with your actual path if needed)
CONFIG_DIR="$HOME/.config/Code/User/.config"

# Create the .vscode directory inside the project root
mkdir -p "$PROJECT_ROOT/.vscode"

# Define the content for settings.json with the corrected global paths
SETTINGS_CONTENT='{
  "editor.fontFamily": "JetBrains Mono, Consolas, Courier New, monospace",
  "editor.fontSize": 13,
  "editor.lineHeight": 22,
  "editor.fontWeight": "300",
  "eslint.configFile": "'$CONFIG_DIR'/.eslintrc.json",
  "prettier.configPath": "'$CONFIG_DIR'/.prettierrc",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.inlineSuggest.enabled": true,
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",
  "editor.minimap.enabled": false,
  "editor.stickyScroll.enabled": false,
  "editor.suggestSelection": "first",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true,
    "source.organizeImports": true
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "name": "Disable italic for all relevant scopes",
        "scope": [
          "comment",
          "keyword",
          "keyword.control",
          "storage",
          "storage.modifier",
          "storage.type",
          "variable.language",
          "variable.language.super",
          "variable.language.this",
          "entity.name.type",
          "entity.other.attribute-name",
          "meta.import",
          "meta.definition.variable",
          "markup.italic",
          "markup.quote",
          "markup.changed",
          "markup.deleted",
          "markup.inserted",
          "punctuation.definition.comment",
          "keyword.operator",
          "keyword.other.type",
          "storage.modifier.import",
          "storage.modifier.package",
          "storage.type.built-in",
          "storage.type.function.arrow",
          "storage.type.generic",
          "storage.type.java",
          "storage.type.primitive"
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "name": "Disable italic for code symbols",
        "scope": [
          "variable",
          "entity.name.function",
          "entity.name.class",
          "entity.name.namespace",
          "property",
          "parameter",
          "string",
          "number",
          "boolean",
          "operator"
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "name": "Disable italic for layer and LAYERS",
        "scope": [
          "variable.other.constant",
          "variable.other.readwrite"
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "name": "Disable italic for 'length' property",
        "scope": [
          "property.readonly"
        ],
        "settings": {
          "fontStyle": ""
        }
      }
    ]
  },
  "explorer.confirmDelete": false,
  "files.autoSave": "afterDelay",
  "html.hover.documentation": false,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "typescript.updateImportsOnFileMove.enabled": "always",
  "javascript.preferences.quoteStyle": "single",
  "typescript.preferences.quoteStyle": "single",
  "javascript.format.semicolons": "remove",
  "typescript.format.semicolons": "remove",
  "prettier.singleQuote": true,
  "prettier.jsxSingleQuote": true,
  "prettier.useTabs": true,
  "prettier.semi": false,
  "workbench.startupEditor": "none",
  "window.menuBarVisibility": "toggle",
  "window.openFilesInNewWindow": "on",
  "workbench.editor.enablePreview": false,
  "workbench.colorTheme": "Dark Plus Darcula (IntelliJ imitation)",
  "multiDiffEditor.experimental.enabled": true,
  "diffEditor.experimental.showMoves": true,
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ],
  "eslint.alwaysShowStatus": true,
  "[php]": {
    "editor.defaultFormatter": "bmewburn.vscode-intelephense-client"
  },
  "intelephense.diagnostics.enable": true,
  "intelephense.format.enable": true,
  "intelephense.environment.phpVersion": "8.1",
  "[javascript]": {
    "editor.defaultFormatter": "vscode.typescript-language-features"
  }
}'

# Create the .vscode/settings.json file with the provided content
echo "$SETTINGS_CONTENT" > "$PROJECT_ROOT/.vscode/settings.json"

# Print success message
echo "VSCode settings have been updated successfully."

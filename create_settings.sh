#!/bin/bash

# Run the following command to give the script execute permissions:
# chmod +x create_settings.sh

# Use the current directory where the script is executed
PROJECT_ROOT=$(pwd)

# Create the .vscode directory
mkdir -p "$PROJECT_ROOT/.vscode"

# Create the .vscode/settings.json file
cat <<EOL > "$PROJECT_ROOT/.vscode/settings.json"
{
  "eslint.configFile": "./.config/.eslintrc.json",
  "prettier.configPath": "./.config/.prettierrc",
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
        "scope": [
          "comment",
          "entity.other.attribute-name",
          "keyword",
          "markup.underline.link",
          "storage.modifier",
          "storage.type",
          "string.url",
          "variable.language.super",
          "variable.language.this"
        ],
        "settings": {}
      },
      {
        "name": "One Dark italic reset",
        "scope": [
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
  "workbench.iconTheme": "a-file-icon-vscode",
  "workbench.colorTheme": "JetBrains Darcula Theme",
  "workbench.tree.enableStickyScroll": false,
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
  "intelephense.trace.server": "verbose",
  "[javascript]": {
    "editor.defaultFormatter": "vscode.typescript-language-features"
  }
}
EOL

# Print success message
echo "VSCode settings have been created successfully."

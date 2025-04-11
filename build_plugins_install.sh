#!/bin/bash

# Don't forget to make the build_install_plugins.sh script executable:
# chmod +x build__install_plugins.sh
                                                              
echo "#!/bin/bash" > install_plugins.sh
echo "" >> install_plugins.sh
                                                              
code --list-extensions | xargs -I{} echo "code --install-extension {} --force" >> install_plugins.sh

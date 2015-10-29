#!/bin/bash

# Create the directory if it does not exist
[ -d /usr/share/fonts/opentype ] || sudo mkdir /usr/share/fonts/opentype

# Clone the repository
sudo git clone https://github.com/adobe-fonts/source-code-pro.git /usr/share/fonts/opentype/scp

# Cache the result
sudo fc-cache -f -v

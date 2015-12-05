#!/bin/bash

# Create the directory if it does not exist
[ -d ~/.fonts ] || sudo mkdir ~/.fonts

wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.tar.gz
sudo tar xvzf 1.030R-it.tar.gz -C ~/.fonts/
rm 1.030R-it.tar.gz

# Cache the result
# No sudo
fc-cache -f -v

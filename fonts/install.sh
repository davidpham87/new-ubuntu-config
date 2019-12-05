#!/bin/bash

# Create the directory if it does not exist
[ -d ~/.fonts ] || mkdir ~/.fonts

wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz     
tar -xvzf 1.050R-it.tar.gz -C ~/.fonts/
rm 1.050R-it.tar.gz

# Cache the result
# No sudo
fc-cache -f -v

"""
Create a makefile by parsing the folder in which the script is called

Expect that each folder is the name of the app and that it contains a file _install.sh_ which are bash commands to install the app.

"""

import os
import sys

MAKEFILE_HEADER = """ # New ubuntu machine configuration: This make file automate the installation
of # a machine where data analysis would be performed. Best when run while in
root"""


MAKEFILE_PATH =  'Makefile'
makefile = []

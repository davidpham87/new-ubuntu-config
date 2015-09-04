"""
Create a makefile by parsing the folder in which the script is called

Expect that each folder is the name of the app and that it contains a file _install.sh_ which are bash commands to install the app.

"""

import os

MAKEFILE_HEADER = """# New ubuntu machine configuration: This make file automate the installation\n# of a machine where data analysis would be performed. Best when run while\n# in root"""

MAKEFILE_PATH =  'Makefile'
makefile = []

folders = sorted(os.walk(os.getcwd()).next()[1])
instruction = "{folder}:\n\tsudo bash {folder}/install.sh\n"
instructions = '\n'.join([instruction.format(folder=folder) for folder in
                          folders if not folder.startswith('.')])
makefile = MAKEFILE_HEADER + 2*'\n' + instructions

with open(MAKEFILE_PATH, 'wb') as f:
    f.write(makefile)

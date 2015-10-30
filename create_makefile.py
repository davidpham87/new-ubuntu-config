"""
Create a makefile by parsing the folder in which the script is called

Expect that each folder is the name of the app and that it contains a file _install.sh_ which are bash commands to install the app.

"""

import os

MAKEFILE_HEADER = """# New ubuntu machine configuration: This make file automate the installation\n# of a machine where data analysis would be performed. Best when run while\n# in root"""

MAKEFILE_PATH =  'Makefile'
makefile = []

def get_dependencies(s):
    require = os.path.join(s, 'require.txt')
    if os.path.exists(require):
        with open(require, 'r') as f:
            return ' ' + f.read().strip()
    return ''

folders = sorted(next(os.walk(os.getcwd()))[1])
instruction = "{folder}:{deps}\n\tsudo bash {folder}/install.sh\n"
instructions = \
    '\n'.join([instruction.format(folder=folder, deps=get_dependencies(folder))
               for folder in
               folders if not folder.startswith('.')])

phony = ".PHONY: " + ' '.join([f for f in folders if not f.startswith('.')])
makefile = '\n\n'.join([MAKEFILE_HEADER,  phony, instructions])

with open(MAKEFILE_PATH, 'w') as f:
    f.write(makefile)

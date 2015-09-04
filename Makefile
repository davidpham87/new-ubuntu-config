# New ubuntu machine configuration: This make file automate the installation of
# a machine where data analysis would be performed. Run while in root

UBUNTU_CODENAME=$(shell lsb_release -c | awk -F' ' '{print $$2}')
TIMEZONE="Europe/Zurich"

 APT_INSTALL_ARGS=-y --force-yes

# all
all:
	echo

install-make:
	sudo apt-get install make

# R instalation
r-cran:
	sudo bash r-cran/install.sh

# python
python:
	echo "Hello World!"

java:
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get $(APT_INSTALL_ARGS) install oracle-java8-installer
# sudo apt-get -y install oracle-java8-installer

# Leiningen
clojure: java
	cd ~/
	mkdir -p ~/bin
	wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
	mv lein ~/bin/
	chmod a+x ~/bin/lein

emacs:
	bash emacs/install.sh

firewall:
	bash firewall/install.sh

tz:
	echo $TIMEZONE > etc/timezone
	cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime

swap_file:
	bash swap_file/install.sh

git:
	sudo add-apt-repository --yes ppa:git-core/ppa
	sudo apt-get update
	sudo apt-get ${APT_INSTALL_ARGS} install git

finger:
	sudo apt-get install finger

free_memory:
	sudo sysctl -w vm.drop_caches=3

markdown_livedown:
	sudo bash markdown_livedown/install.sh

haskell:
	sudo apt-get install haskell-platform

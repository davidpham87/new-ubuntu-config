# New ubuntu machine configuration: This make file automate the installation
# of a machine where data analysis would be performed.Best when run while
# in root

.PHONY: clojure emacs finger firewall fonts git google_drive install_make java latex markdown_livedown nodejs python r_cran ruby swap_file swap_keys timezone

clojure: java
	sudo bash clojure/install.sh

emacs: fonts markdown_livedown
	sudo bash emacs/install.sh

finger:
	sudo bash finger/install.sh

firewall:
	sudo bash firewall/install.sh

fonts:
	sudo bash fonts/install.sh

git:
	sudo bash git/install.sh

google_drive:
	sudo bash google_drive/install.sh

install_make:
	sudo bash install_make/install.sh

java:
	sudo bash java/install.sh

latex:
	sudo bash latex/install.sh

markdown_livedown: nodejs
	sudo bash markdown_livedown/install.sh

nodejs:
	sudo bash nodejs/install.sh

python:
	sudo bash python/install.sh

r_cran:
	sudo bash r_cran/install.sh

ruby:
	sudo bash ruby/install.sh

swap_file:
	sudo bash swap_file/install.sh

swap_keys:
	sudo bash swap_keys/install.sh

timezone:
	sudo bash timezone/install.sh

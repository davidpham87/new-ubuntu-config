 # New ubuntu machine configuration: This make file automate the installation
# of a machine where data analysis would be performed. Best when run while
# in root

clojure:
	sudo bash clojure/install.sh

cron:
	sudo bash cron/install.sh

emacs:
	sudo bash emacs/install.sh

finger:
	sudo bash finger/install.sh

firewall:
	sudo bash firewall/install.sh

git:
	sudo bash git/install.sh

google_drive:
	sudo bash google_drive/install.sh

install-make:
	sudo bash install-make/install.sh

java:
	sudo bash java/install.sh

markdown_livedown:
	sudo bash markdown_livedown/install.sh

nodejs:
	sudo bash nodejs/install.sh

r-cran:
	sudo bash r-cran/install.sh

swap_file:
	sudo bash swap_file/install.sh

timezone:
	sudo bash timezone/install.sh

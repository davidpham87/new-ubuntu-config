# New ubuntu machine configuration: This make file automate the installation
# of a machine where data analysis would be performed.Best when run while
# in root

.PHONY: clj-tools clojure clojure-lsp-target emacs finger firewall fonts git google_drive install_make java latex markdown_livedown nodejs python r_cran ruby swap_file swap_keys timezone

clj-tools: clojure-lsp-target
	bash clj-tools/install.sh

clojure: java
	bash clojure/install.sh

clojure-lsp-target:
	bash clojure-lsp-target/install.sh

emacs: fonts
	bash emacs/install.sh

finger:
	bash finger/install.sh

firewall:
	bash firewall/install.sh

fonts:
	bash fonts/install.sh

git:
	bash git/install.sh

google_drive:
	bash google_drive/install.sh

install_make:
	bash install_make/install.sh

java:
	bash java/install.sh

latex:
	bash latex/install.sh

markdown_livedown: nodejs
	bash markdown_livedown/install.sh

nodejs:
	bash nodejs/install.sh

python: nodejs
	bash python/install.sh

r_cran:
	bash r_cran/install.sh

ruby:
	bash ruby/install.sh

swap_file:
	bash swap_file/install.sh

swap_keys:
	bash swap_keys/install.sh

timezone:
	bash timezone/install.sh

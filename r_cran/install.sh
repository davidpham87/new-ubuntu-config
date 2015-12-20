UBUNTU_CODENAME=$(shell lsb_release -c | awk -F' ' '{print $$2}')

sudo printf "\ndeb http://stat.ethz.ch/CRAN/bin/linux/ubuntu $(UBUNTU_CODENAME)/" >> /etc/apt/sources.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update && sudo apt-get upgrade

sudo apt-get -y --force-yes install r-base-core
sudo apt-get -y --force-yes install r-cran-*
sudo apt-get -y --force-yes install libcurl4-openssl-dev libxml2-dev # curl  and xml package

sudo Rscript r_cran/packages.R

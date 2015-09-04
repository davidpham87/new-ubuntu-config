# Install the newest git version
echo "Installing git"
sudo add-apt-repository --yes ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y --force-yes install git

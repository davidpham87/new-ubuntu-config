echo "Installing Clojure and Lein"
sudo apt install curl

VERSION=1.10.3.1075
SCRIPT=linux-install-$VERSION.sh

curl -O https://download.clojure.org/install/$SCRIPT
chmod +x $SCRIPT
sudo ./$SCRIPT
rm $SCRIPT

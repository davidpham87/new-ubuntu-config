echo "Installing Clojure and Lein"
cd ~/
mkdir -p ~/bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
mv lein ~/bin/
chmod a+x ~/bin/lein

# echo "Installing drip"
# curl -L https://raw.githubusercontent.com/ninjudd/drip/master/bin/drip > ~/bin/drip
# chmod 755 ~/bin/drip
# sudo echo "LEIN_JAVA_CMD=\${LEIN_JAVA_CMD-drip}" >> ~/.lein/leinrc

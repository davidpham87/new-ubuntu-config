echo "Installing Babashka"

curl -s https://raw.githubusercontent.com/borkdude/babashka/master/install > babashka
bash babashka
rm babashka

echo "Installing Clj-kondo"
curl -s https://raw.githubusercontent.com/borkdude/clj-kondo/master/script/install-clj-kondo > clj-kondo-install
bash clj-kondo-install
rm clj-kondo-install


echo "Installing Jet"
curl -s https://raw.githubusercontent.com/borkdude/jet/master/install> jet-install
bash jet-install
rm jet-install

echo "Install clojure-lsp"

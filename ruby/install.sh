# Instal haml and middleman
VERSION="0.5.0"

wget -O ruby-install-$VERSION.tar.gz https://github.com/postmodern/ruby-install/archive/v$VERSION.tar.gz
tar -xzvf ruby-install-$VERSION.tar.gz
cd ruby-install-$VERSION/
sudo make install

sudo ruby-install ruby
sudo gem install html2haml
sudo gem install middleman

# clean
rm -r ruby-install-$VERSION(
rm ruby-install-$VERSION.tar.gz

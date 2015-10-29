EMACS_VERSION=24.5
APT_INSTALL_ARGS=-y --force-yes

echo "Installing Emacs"

# Essential building stuff
sudo apt-get $APT_INSTALL_ARGS install build-essential
sudo apt-get build-dep emacs$(echo $EMACS_VERSION | cut -d"." -f 1)

wget http://ftp.gnu.org/gnu/emacs/emacs-$EMACS_VERSION.tar.xz
tar -xf emacs-$EMACS_VERSION.tar.*

cd emacs-$EMACS_VERSION && ./configure && make && sudo make install

echo 'export EDITOR="emacs -Q"' >> ~/.bashrc
echo 'export TERM=xterm-256color' >> ~/.bashrc

# Install emacs speaks statistics
sudo apt-get $APT_INSTALL_ARGS install ess

# Download and use my default emacs config
git clone https://github.com/davidpham87/emacs-data-analysis-config.git ~/
rm -r ~/.emacs.d
mv -f ~/emacs-data-analysis-config ~/.emacs.d
mv ~/.emacs.d/.emacs-live.el ~/

git clone https://github.com/shime/emacs-livedown.git ~/.emacs.d/packs/lang-code/lib/

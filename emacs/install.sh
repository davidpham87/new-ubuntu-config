EMACS_VERSION=26.3
APT_INSTALL_ARGS=-y

echo "Installing Emacs"

# Essential building stuff
sudo apt $APT_INSTALL_ARGS install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev
# for pdf, see https://github.com/politza/pdf-tools
sudo apt -y install zlib1g-dev libpoppler-glib-dev libpoppler-private-dev imagemagick
sudo apt -y install libgnutls28-dev libwebkit2gtk-4.0-dev libwebkit2gtk-4.0

sudo apt build-dep emacs$(echo $EMACS_VERSION | cut -d"." -f 1)

wget http://ftp.gnu.org/gnu/emacs/emacs-$EMACS_VERSION.tar.xz
tar -xf emacs-$EMACS_VERSION.tar.*

cd emacs-$EMACS_VERSION && ./configure --with-xwidgets && make && sudo make install

echo 'export EDITOR="emacs -Q"' >> ~/.bashrc
echo 'export TERM=xterm-256color' >> ~/.bashrc
echo 'export PS1="\[\e[1;34m\]\u@\h\[\e[m\]: \[\e[1;31m\]\w\[\e[m\]\n\$ "' >> ~/.bashrc

# Clean
rm -r emacs-$EMACS_VERSION
rm emacs-$EMACS_VERSION.tar.*

# Install emacs speaks statistics
sudo apt-get $APT_INSTALL_ARGS install ess

# Download and use my default emacs config
rm -r ~/.emacs.d
git clone git@github.com:davidpham87/prelude.git ~/.emacs.d

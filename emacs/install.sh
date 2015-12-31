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
echo 'export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\e[1;34m\]\u@\h\[\e[m\]: \[\e[1;31m\]\w\[\e[m\]\n\$ "' >> ~/.bashrc

# Clean
rm -r emacs-$EMACS_VERSION
rm emacs-$EMACS_VERSION.tar.*

# Install emacs speaks statistics
sudo apt-get $APT_INSTALL_ARGS install ess

# Download and use my default emacs config
rm -r ~/.emacs.d
git clone --recursive https://github.com/davidpham87/emacs-data-analysis-config.git ~/.emacs.d
mv ~/.emacs.d/.emacs-live.el ~/

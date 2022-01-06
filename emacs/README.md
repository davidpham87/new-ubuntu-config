# Emacs Configuration

It install the emacs version specified in the `install.sh` file and download the configuration from this repository [emacs-data-analysis-config](https://github.com/davidpham87/emacs-data-analysis-config).


``` shell
echo "Installing Emacs"

# Essential building stuff
sudo apt -y install build-essential texinfo libx11-dev libxpm-dev libjpeg-dev \
     libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev

# for pdf, see https://github.com/politza/pdf-tools
sudo apt -y install zlib1g-dev libpoppler-glib-dev libpoppler-private-dev imagemagick
sudo apt -y install libgnutls28-dev libwebkit2gtk-4.0-dev libwebkit2gtk-4.0

# https://emacs.stackexchange.com/questions/59538/compile-emacs-from-feature-native-comp-gccemacs-branch-on-ubuntu
sudo apt install libxpm-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev \
     libx11-dev libncurses5-dev automake autoconf texinfo libgtk2.0-dev
sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa
sudo apt install gcc-10 g++-10 libgccjit0 libgccjit-10-dev libjansson4 \
     libjansson-dev
git clone git://git.sv.gnu.org/emacs.git emacs-source
cd emacs-source
git checkout feature/native-comp
export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10
./autogen.sh
./configure --with-native-compilation --with-json CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer"
make -j16 NATIVE_FULL_AOT=1
make install

# sudo apt -y install snapd
# sudo snap install emacs --classic

echo 'export EDITOR="emacs -Q"' >> ~/.bashrc
echo 'export TERM=xterm-256color' >> ~/.bashrc
echo 'export PS1="\[\e[1;34m\]\u@\h\[\e[m\]: \[\e[1;31m\]\w\[\e[m\]\n\$ "' >> ~/.bashrc

# Install emacs speaks statistics
sudo apt -y install ess

# Download and use my default emacs config
rm -r ~/.emacs.d
git clone git@github.com:davidpham87/prelude.git ~/.emacs.d

```

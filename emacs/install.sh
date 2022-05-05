echo "Installing Emacs"

# https://emacs.stackexchange.com/questions/59538/compile-emacs-from-feature-native-comp-gccemacs-branch-on-ubuntu

sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa
sudo apt update

# Essential building stuff
# for pdf, see https://github.com/politza/pdf-tools
sudo apt -y install \
     build-essential texinfo libx11-dev \
     libxpm-dev libjpeg-dev \
     libpng-dev libgif-dev libtiff-dev libgtk-3-dev libncurses-dev \
     zlib1g-dev libpoppler-glib-dev libpoppler-private-dev imagemagick \
     libgnutls28-dev libwebkit2gtk-4.0-dev libwebkit2gtk-4.0-37 \
     libxpm-dev libgif-dev libjpeg-dev libpng-dev libtiff-dev \
     libx11-dev libncurses5-dev automake autoconf texinfo libgtk2.0-dev \
     gcc-11 g++-11 libgccjit0 libgccjit-11-dev libjansson4 \
     libjansson-dev libwebp-dev librsvg2-dev

git clone git://git.sv.gnu.org/emacs.git emacs-source
cd emacs-source
export CC=/usr/bin/gcc-11 CXX=/usr/bin/gcc-11
./autogen.sh
./configure --with-json \
            --with-tiff=ifavailable \
            --with-rsvg \
            --with-webp \
            --with-native-compilation \
            --with-pgtk \
            CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer"

make -j16 NATIVE_FULL_AOT=1
sudo make install

echo 'export EDITOR="emacs -Q"' >> ~/.bashrc
echo 'export TERM=xterm-256color' >> ~/.bashrc
echo 'export PS1="\[\e[1;34m\]\u@\h\[\e[m\]: \[\e[1;31m\]\w\[\e[m\]\n\$ "' >> ~/.bashrc

# Install emacs speaks statistics
sudo apt -y install ess

# Download and use my default emacs config
rm -r ~/.emacs.d
git clone git@github.com:davidpham87/prelude.git ~/.emacs.d

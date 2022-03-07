# Python installation for data analysis or coding in general

sudo apt-get remove python-pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# pandas numpy scipy for python3
sudo apt -y install \
     libatlas3-base \
     python3-setuptools \
     python3-numpy \
     python3-scipy \
     python3-matplotlib \
     python3-pandas python3-nose \
     pyflakes


# Set a different blas and lapack
# BLAS
sudo update-alternatives --set libblas.so.3 \
     /usr/lib/atlas-base/atlas/libblas.so.3

# LAPACK
sudo update-alternatives --set liblapack.so.3 \
     /usr/lib/atlas-base/atlas/liblapack.so.3

sudo pip3 install --install-option="--prefix=" -U \
     scikit-learn ipython jupyter jedi

# jupyiter for interactive notebooks
sudo ipython3 kernel install

# lsp mode
sudo npm install -g pyright

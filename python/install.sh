# Python installation for data analysis or coding in general

sudo apt-get remove python-pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# pandas numpy scipy for python3
sudo apt-get -y install python-numpy python-scipy \
     libatlas3-base
     python-matplotlib \
     python-pandas python-sympy python-nose \
     python3-numpy python3-scipy python3-matplotlib \
     python3-pandas python3-nose

# Scikit for python 2 and 3
sudo apt-get -y install build-essential python-dev  \
     python-setuptools \
     libatlas-dev libatlas3-base

sudo apt-get -y --force-yes install build-essential python3-dev \
     python3-setuptools \
     python3-numpy python3-scipy \
     libatlas-dev libatlas3gf-base

# Set a different blas and lapack
# BLAS
sudo update-alternatives --set libblas.so.3 \
     /usr/lib/atlas-base/atlas/libblas.so.3

# LAPACK
sudo update-alternatives --set liblapack.so.3 \
     /usr/lib/atlas-base/atlas/liblapack.so.3

sudo pip2 install --install-option="--prefix=" -U scikit-learn
sudo pip3 install --install-option="--prefix=" -U scikit-learn

# Install jinja2, sphinx (documentation), pyzmq, pygments, tornado, nose
sudo pip2 install -U ipython[all]
sudo pip3 install -U ipython[all]

# jupyiter for interactive notebooks
sudo pip2 install -U jupyter
sudo pip3 install -U jupyter
sudo ipython3 kernel install # add python3 kernel

# jedi for emacs autocompletion
sudo pip2 install -U jedi
sudo pip3 install -U jedi

# checkers for emacs
sudo apt-get install pyflakes

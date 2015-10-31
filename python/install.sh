# Python installation for data analysis or coding in general

sudo apt-get remove python-pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# pandas numpy scipy for python3
sudo apt-get install python-numpy python-scipy python-matplotlib \
     python-pandas python-sympy python-nose \
     python3-numpy python3-scipy python3-matplotlib \
     python3-pandas python3-nose

# Scikit for python 2 and 3
sudo apt-get install build-essential python-dev python-setuptools \
     libatlas-dev libatlas3gf-base

sudo apt-get install build-essential python3-dev python3-setuptools \
     python3-numpy python3-scipy \
     libatlas-dev libatlas3gf-base

# Set a different blas and lapack
sudo update-alternatives --set libblas.so.3 \
     /usr/lib/atlas-base/atlas/libblas.so.3

sudo update-alternatives --set liblapack.so.3 \
     /usr/lib/atlas-base/atlas/liblapack.so.3

sudo pip install --install-option="--prefix=" -U scikit-learn
sudo pip3 install --install-option="--prefix=" -U scikit-learn

# Install jinja2, sphinx (documentation), pyzmq, pygments, tornado, nose
sudo pip install -U ipython[all]
sudo pip3 install -U ipython[all]

# jupyiter for interactive notebooks
sudo pip install -U jupyter
sudo ipython3 kernel install # add python3 kernel

# jedi for emacs autocompletion
sudo pip3 install -U jedi

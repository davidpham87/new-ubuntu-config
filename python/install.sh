# Python installation for data analysis or coding in general

# pandas numpy scipy for python3
sudo apt-get install python-numpy python-scipy python-matplotlib ipython \
     ipython-notebook python-pandas python-sympy python-nose

sudo apt-get install python3-numpy python3-scipy python3-matplotlib \
     python3-pandas python3-sympy python3-nose

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

sudo pip install --user --install-option="--prefix=" -U scikit-learn

# Sphinx for documentation
sudo apt-get install python-sphinx

# jedi for emacs autocompletion
sudo pip install -U jedi

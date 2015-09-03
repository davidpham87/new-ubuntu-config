# Install go
sudo apt-get install golang git mercurial
echo "export GOPATH=\$$HOME/gopath" >> ~/.bashrc
echo "export PATH=\$$GOPATH:\$$GOPATH/bin:\$$PATH" >> ~/.bashrc
sh ~/.bashrc

# Install drive
go get -u github.com/odeke-em/drive/cmd/drive
drive init ~/gdrive
cd ~/gdrive
drive pull

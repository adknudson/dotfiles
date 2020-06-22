# General for new install
sudo apt-get install -y \
	tree \
	htop \
	okular

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Install R v4.0 on Ubuntu 18.04
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
sudo apt-get update
sudo apt install r-base-dev

# Packages necessary for 'devtools', 'tidyverse'
sudo apt-get install -y \
	libv8-dev \
	libcurl4-openssl-dev \
	libxml2-dev libssl-dev \
	libssh2-1-dev

sudo apt-get install -y libcurl4-gnutls-dev
sudo apt-get install -y libgit2-dev

wget -P ~/Downloads https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.1-linux-x86_64.tar.gz
tar -xzvf ~/Downloads/julia-1.4.1-linux-x86_64.tar.gz
mv julia-1.4.1/ ~/julia-1.4.1

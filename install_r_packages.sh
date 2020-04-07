# Install R v3.6 on Ubuntu 18.10
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
# sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt-get update
# sudo apt install r-base-dev

# Packages necessary for 'devtools', 'tidyverse'
sudo apt-get install -y libv8-dev libcurl4-openssl-dev libxml2-dev libssl-dev \
libssh2-1-dev libgit2-dev


echo "# R script to install my common R packages
install.packages(c(\"devtools\", \"tidyverse\"))

install.packages(c(\"rmarkdown\",\"gridExtra\",\"kableExtra\",\"rticles\"))

install.packages(c(\"coda\",\"mvtnorm\",\"loo\",\"dagitty\"))
devtools::install_github(\"rmcelreath/rethinking\")

install.packages(\"greta\")
install.packages(\"bayesplot\")
install.packages(\"igraph\")
install.packages(\"DiagrammeR\")

if (!requireNamespace(\"BiocManager\", quietly = TRUE)) {
  install.packages(\"BiocManager\")
}

BiocManager::install(\"CNTools\")
install.packages(\"TCGA2STAT\")" > install_r_packages.R

Rscript install_r_packages.R >> install_r_packages.out

rm install_r_packages.R

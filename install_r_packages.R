# R script to install my common R packages
install.packages(c("devtools", "tidyverse"))

install.packages(c("rmarkdown","gridExtra","kableExtra","rticles", "bookdown"))
install.packages("pagedown")

install.packages(c("coda","mvtnorm","loo","dagitty"))
devtools::install_github("rmcelreath/rethinking")


install.packages("reticulate")
reticulate::use_condaenv("greta-gpu")
install.packages("greta")
install.packages("bayesplot")
install.packages("igraph")
install.packages("DiagrammeR")

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

BiocManager::install("CNTools")
install.packages("TCGA2STAT")"
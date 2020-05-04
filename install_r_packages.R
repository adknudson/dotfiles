install.packages(c("devtools", "tidyverse"))

install.packages(c("rmarkdown",
                   "gridExtra",
                   "kableExtra",
                   "rticles",
                   "bookdown",
                   "pagedown"))

install.packages(c("coda","mvtnorm","loo","dagitty"))
devtools::install_github("rmcelreath/rethinking")

install.packages(c("here", "pacman"))

install.packages("reticulate")
reticulate::use_condaenv("greta-gpu")
install.packages("greta")
install.packages(c("bayesplot", "igraph", "DiagrammeR"))

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}
BiocManager::install("CNTools")
tcga2stat <-
  "https://cran.r-project.org/src/contrib/Archive/TCGA2STAT/TCGA2STAT_1.2.tar.gz"
download.file(tcga2stat,
              destfile = "/tmp/Rtmpyn1r3y/downloaded_packages/TCGA2STAT_1.2.tar.gz")
install.packages("/tmp/Rtmpyn1r3y/downloaded_packages/TCGA2STAT_1.2.tar.gz",
                 repos = NULL, type = "source")

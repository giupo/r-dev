FROM rocker/r-ver:4.0.5
RUN apt-get update && \
      apt-get -y upgrade && \
      apt-get -y install libxml2-dev \ 
      libgit2-dev libcurl4-gnutls-dev \ 
      libssl-dev libpcre3-dev liblzma-dev libpcre2-dev \
      libbz2-dev default-jdk git openssh-client

# install R deps

RUN R -e 'install.packages(c("pak", "devtools", "roxygen2", "testthat", "covr", "mockery", "usethis", "renv", "rJava"), repos="https://cran.rstudio.com")'

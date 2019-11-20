FROM rocker/r-ver:3.5.3

RUN apt-get -qq update && \
      apt-get -yqq upgrade && \
      apt-get -yqq install libxml2-dev \ 
      libgit2-dev libcurl4-gnutls-dev \ 
      libssl-dev libpcre3-dev liblzma-dev \
      libbz2-dev default-jdk


# install R deps

RUN R -e 'install.packages("pak", repos="https://cran.rstudio.com")'
RUN R -e 'pak::pkg_install(c("pak", "devtools", "roxygen2", "testthat", "covr", "mockery", "usethis", "rstudio/renv"), upgrade=TRUE)'
RUN R -e 'install.packages("rJava", repos="https://cran.rstudio.com")'

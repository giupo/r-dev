FROM rocker/r-ver:3.5.3

RUN apt-get -qq update && apt-get -yqq upgrade
RUN apt-get -yqq install libxml2-dev libgit2-dev libcurl4-gnutls-dev libssl-dev


# install R deps
RUN R -e 'install.packages("pak", repos="https://cran.rstudio.com")'

RUN R -e 'pak::pkg_install(c("devtools", "roxygen2", "testthat", "covr", "mockery", "usethis", "rstudio/renv"))'

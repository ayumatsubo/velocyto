FROM rocker/rstudio
MAINTAINER Ayumu Tsubosaka "tbskaym314731@gmail.com"

RUN apt-get update --yes && apt-get install --no-install-recommends --yes \
  build-essential \
  cmake \
  git \
  libbamtools-dev \
  libboost-dev \
  libboost-iostreams-dev \
  libboost-log-dev \
  libboost-system-dev \
  libboost-test-dev \
  libssl-dev \
  libcurl4-openssl-dev \
  libz-dev \
  curl \
  libhdf5-cpp-100 \ 
  libarmadillo7 \
  libarmadillo-dev\
  gsl-bin\ 
  libgsl0-dev\
  libeigen3-dev\
  libboost-all-dev\
  libcurl4-openssl-dev\
  libssl-dev\
  libcairo2-dev\
  libxt-dev\
  libgtk2.0-dev\
  libcairo2-dev\
  xvfb\
  xauth\
  xfonts-base

RUN \
  R -e 'chooseCRANmirror(ind=52); install.packages(c("devtools", "Rcpp","RcppArmadillo", "Matrix", "mgcv", "abind","h5","Rtsne","cluster","data.table","Cairo","urltools","tidyverse","Seurat"))'

RUN \
  R -e 'source("https://bioconductor.org/biocLite.R"); biocLite(c("pcaMethods","edgeR","Rsamtools","GenomicAlignments","GenomeInfoDb","Biostrings","GO.db", "org.Hs.eg.db","org.Mm.eg.db"),suppressAutoUpdate=TRUE,ask=FALSE,suppressUpdates=TRUE)'


#RUN useradd -m user
USER rstudio
#ENTRYPOINT ["/bin/bash rs"]
WORKDIR "/home/rstudio"

RUN \
  git clone https://github.com/velocyto-team/velocyto.R && \
  mkdir -p ~/R/x86_64-redhat-linux-gnu-library/3.4

RUN \
  echo '.libPaths(c("~/R/x86_64-redhat-linux-gnu-library/3.4", .libPaths()))' > .Rprofile && \
  R -e 'devtools::install_local("~/velocyto.R/",dep=T,upgrade_dependencies=F)'

RUN \
  R -e 'devtools::install_github("igraph/rigraph")'

RUN \
  R -e 'devtools::install_github("jkrijthe/Rtsne",ref="openmp")'
  
Run \
  R -e 'devtools::install_github("hms-dbmi/pagoda2")'

ENV  LD_LIBRARY_PATH=/usr/local/lib/R/lib/:$LD_LIBRARY_PATH \
  R_PROFILE=~/.Rprofile

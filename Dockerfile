## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:4.0.2

## Declares build arguments
ARG NB_USER
ARG NB_UID

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
## Enable this to copy files from the binder subdirectory
## to the home, overriding any existing files.
## Useful to create a setup on binder that is different from a
## clone of your repository
## COPY binder ${HOME}
RUN chown -R ${NB_USER} ${HOME}

#Installs TinyTeX for RStudio LaTeX
RUN apt-get update && apt-get -y install libgsl-dev 

RUN cd && wget -qO- "https://yihui.org/gh/tinytex/tools/install-unx.sh" | sh && tlmgr install psnfss

RUN R -e "tinytex::install_tinytex(extra_packages=c('iftex','ifluatex','pdftexcmds','grffile','epstopdf-pkg','lm-math','unicode-math','lualatex-math','filehook'))"

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

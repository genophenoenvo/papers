## Use a tag instead of "latest" for reproducibility
FROM tswetnam/gep-binder:latest

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
RUN cd && wget -qO- "https://yihui.org/gh/tinytex/tools/install-unx.sh" | sh && tlmgr install psnfss

#| sh && tlmgr install ifluatex| sh && tlmgr install ifxetex
RUN R -e "tinytex::install_tinytex(extra_packages=c('iftex','ifluatex','pdftexcmds','grffile','epstopdf-pkg','lm-math','unicode-math','lualatex-math','filehook'))"

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
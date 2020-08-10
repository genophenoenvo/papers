## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:4.0.2

USER root

#Installs depends for TinyTeX for RStudio LaTeX
RUN apt-get update && apt-get -y install libgsl-dev 

RUN cd && wget -qO- "https://yihui.org/gh/tinytex/tools/install-unx.sh" | sh && tlmgr install psnfss

RUN chown -R jovyan:staff /home/jovyan 

RUN chown -R jovyan:staff /opt

USER jovyan

RUN R -e "tinytex::install_tinytex(extra_packages=c('iftex','ifluatex','pdftexcmds','grffile','epstopdf-pkg','lm-math','unicode-math','lualatex-math','filehook'))"

## Copies your repo files into the Docker Container
COPY . ${HOME}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi


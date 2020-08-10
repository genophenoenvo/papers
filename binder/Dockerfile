## Use a tag instead of "latest" for reproducibility
FROM genophenoenvo/binder:4.0.2

USER root

## Copies your repo files into the Docker Container
COPY . /home/rstudio/

RUN chown -R jovyan:root /home/rstudio/

USER jovyan

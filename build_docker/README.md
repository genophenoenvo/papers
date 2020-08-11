# Build Docker Container for Binder

This is a custom Dockerfile we're using with Binder. It supports additional dependencies and R LaTeX fonts used in our manuscripts. In order to speed up the creation of PDFs, we are hosting this container on the [DockerHub](https://hub.docker.com/u/genophenoenvo) under our organizational name `genophenoenvo`.  

**Important: Binder pulls the Dockerfile from the `/binder` sub-directory in this repository -- not from this `Dockerfile`, we use this file to stage the image we want Binder to pull.** 

Build Binder image locally and push to the DockerHub:

```
docker build -t genophenoenvo/binder:4.0.2 .
```

```
docker push genophenoenvo/binder:4.0.2
```

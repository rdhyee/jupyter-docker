# learned a lot from https://github.com/krischer/seismo_live/blob/master/Dockerfile

# https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook
FROM jupyter/datascience-notebook
#FROM jupyter/scipy-notebook

# https://hub.docker.com/r/jupyter/notebook/
# https://github.com/jupyter/notebook
#FROM jupyter/notebook

MAINTAINER raymond.yee@gmail.com

# Install system libs as root.
# USER root

# installation stuff

# Rest as jovyan user who is provided by the Jupyter notebook template.
# USER jovyan


# for images based on jupyter/minimal-notebook
COPY notebooks/ /home/jovyan/work/

# A bit ugly but unfortunately necessary: https://github.com/docker/docker/issues/6119
USER root
RUN chown -R jovyan:users /home/jovyan/work

# USER jovyan



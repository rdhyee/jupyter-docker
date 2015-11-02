set -e
docker build -t rdhyee/jupyter-docker .
PORT=${1:-8888}
DATA_DIR=${2:-/Users/raymondyee/D/Data/}

# here we map a local directory to /notebooks
# docker run -d -v `pwd`:/notebooks -v $DATA_DIR:/data -p $PORT:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/jupyter-docker

# works for jupyter/notebook
# docker run -d -v $DATA_DIR:/data -p $PORT:8888 rdhyee/jupyter-docker


# jupyter stack images (for laptop)
# docker run -e USE_HTTPS=yes -d -v `pwd`:/home/jovyan/work  -v $DATA_DIR:/data -p $PORT:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/jupyter-docker


# jupyter stack images (don't map local drive)
docker run -e USE_HTTPS=yes -d -p $PORT:8888 -e "PASSWORD=$IPN_PW_DEFAULT" rdhyee/jupyter-docker

FROM nvidia/cuda:8.0-cudnn6-devel
# Set the working directory to /app
WORKDIR /tmp
ADD . /tmp
RUN bash ./init_install.sh

EXPOSE 8888 6006
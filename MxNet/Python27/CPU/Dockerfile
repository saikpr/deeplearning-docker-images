FROM nvidia/cuda:8.0-cudnn6-devel
# Set the working directory to /app
WORKDIR /root
ADD . /root
RUN bash ./init_install.sh
ENTRYPOINT jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/root' 
EXPOSE 8888 6006
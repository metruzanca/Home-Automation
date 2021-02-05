FROM python:3.8-slim

# Install dependencies: ffmpeg & git
RUN apt-get -y update; \
  apt-get -y upgrade; \
  apt-get install -y ffmpeg; \
  apt-get install -y git

# Manual install ytmdl (https://github.com/deepjyoti30/ytmdl#manual)
RUN pip install setuptools; \
  git clone https://github.com/deepjyoti30/ytmdl; \
  cd ytmdl; \
  python setup.py install

# Add volume mount point for downloades
VOLUME /downloads
WORKDIR /downloads

# Set Entrypoint for the CLI
# --level DEBUG removes a side-effect. I've made a bug report on github
ENTRYPOINT [ "ytmdl"]
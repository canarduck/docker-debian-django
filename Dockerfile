# Pull base image
FROM debian:jessie

# Update & install packages
RUN apt update && \
  apt upgrade -y && \
  apt install -y python3-dev libpq-dev postgresql-client libjpeg-dev libfreetype6-dev zlib1g-dev xvfb iceweasel g++ build-essential virtualenv
  apt clean -y && \
  apt autoclean -y && \
  apt-get autoremove -y && \
  rm -rf /usr/share/locale/* && \
  rm -rf /var/cache/debconf/*-old && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /usr/share/doc/*

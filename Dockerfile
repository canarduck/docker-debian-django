# Pull base image
FROM debian:jessie

# Update & install packages
RUN apt-get update \
  && apt-get install -y \
    python3-dev \
    libpq-dev \
    postgresql-client \
    libjpeg-dev \
    libfreetype6-dev \
    zlib1g-dev \
    xvfb iceweasel \
    g++ \
    build-essential \
    virtualenv
# Cleaning
RUN apt-get clean -y \
  && apt-get autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /usr/share/locale/* \
  && rm -rf /var/cache/debconf/*-old \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /usr/share/doc/*

# Xvfb
RUN /usr/bin/Xvfb :99 -ac -screen 0 1024x768x8 &
RUN export DISPLAY=":99" 

# VENV
RUN export WORKSPACE=`pwd`
RUN virtualenv -p python3 venv
RUN source venv/bin/activate


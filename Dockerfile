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
    xvfb \
    iceweasel \
    g++ \
    build-essential \
    virtualenv \
  && apt-get clean -y \
  && apt-get autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /usr/share/locale/* \
  && rm -rf /var/cache/debconf/*-old \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /usr/share/doc/*

# Xvfb
# CMD ["/usr/bin/Xvfb", ":99", "-ac", "-screen 0 1024x768x8", "&"]
# ENV DISPLAY :99 
# RUN virtualenv -p python3 venv


# Pull base image
FROM debian:jessie

# Change locale 
RUN apt-get update -y && apt-get install -y locales
RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8
RUN echo 'fr_FR.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen
ENV LC_ALL C.UTF-8 ENV LANG fr_FR.UTF-8 ENV LANGUAGE fr_FR.UTF-8

# Update & install packages
RUN apt-get install -y \
    python3-pip \
    python3-dev \
    libpq-dev \
    postgresql-client \
    libjpeg-dev \
    libxml2-dev \ 
    libxslt1-dev \
    libfreetype6-dev \
    zlib1g-dev \
    xvfb \
    firefox-esr \
    g++ \
    build-essential \
    wget \
    locales \
    tor \
  && apt-get clean -y \
  && apt-get autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /usr/share/locale/* \
  && rm -rf /var/cache/debconf/*-old \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /usr/share/doc/*

# Virtualenv de jessie (1.11) n'utilise pas wheel, j'install par pip (1.15)
RUN pip3 install virtualenv

# Geckodriver pour selenium
RUN wget -qO- \
  https://github.com/mozilla/geckodriver/releases/download/v0.11.1/geckodriver-v0.11.1-linux64.tar.gz | \
  tar xvz -C /usr/local/bin


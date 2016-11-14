# docker-debian-django

Image docker pour CI de projets django en python 3

## Target

Image de base pour CI gitlab. Tests unitaires + fonctionnels avec selenium (firefox sur xvfb) 

## Packages included

* python3-dev virtualenv # python
* libpq-dev postgresql-client # postgresql
* libjpeg-dev libfreetype6-dev zlib1g-dev # pillow
* xvfb firefox-esr # selenium tests
* g++ build-essential # pip

## Extras

* (geckodriver)[https://github.com/mozilla/geckodriver/releases] in /usr/local/bin # required by selenium 3

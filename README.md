# docker-debian-django

Base docker image for gitlab-ci

## Target

CI for a python3 django install with selenium tests

## Packages included

* python3-dev virtualenv # python
* libpq-dev postgresql-client # postgresql
* libjpeg-dev libfreetype6-dev zlib1g-dev # pillow
* xvfb iceweasel # selenium tests
* g++ build-essential # pip

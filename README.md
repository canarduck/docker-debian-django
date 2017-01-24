# docker-debian-django

Image docker pour CI de projets django en python 3

## Target

Image de base pour CI gitlab. Tests unitaires + fonctionnels avec selenium (firefox sur xvfb) 

## Packages included

* python3
* postgresql-client
* selenium tests (firefox + xvfb + [geckodriver](https://github.com/mozilla/geckodriver/releases))
* tor

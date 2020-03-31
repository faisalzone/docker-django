# Docker setup files for Django 3.0
Django 3.0 requires some setups for Dockerfile and docker-compose.yml when using the following two packages
- django-crispy-forms
- sorl-thumbnail

###### Requirements:
- Django 3.0
- Python 3.7

###### Additional package:
Django 3.0 does not support `django.utils.encoding` and it had to be replaced by `six`.

```
pip install six
```

## How to setup
1. Download the folder `docker-change` from this repository
2. Copy-paste text from `docker-compose.yml` and `Dockerfile`, and create same files within your django project.

###### For support on how to setup docker
- A Beginner's Guide to Docker by William Vincent - https://wsvincent.com/beginners-guide-to-docker/
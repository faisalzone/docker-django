# Pull base image
FROM python:3.7-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system


# Copy project
COPY . /code/

# Django 3 Docker modifications
ADD /docker-change/usr/local/lib/python3.7/site-packages/sorl/thumbnail/models.py /usr/local/lib/python3.7/site-packages/sorl/thumbnail/
ADD /docker-change/usr/local/lib/python3.7/site-packages/sorl/thumbnail/templatetags/thumbnail.py /usr/local/lib/python3.7/site-packages/sorl/thumbnail/templatetags/
ADD /docker-change/usr/local/lib/python3.7/site-packages/sorl/thumbnail/images.py /usr/local/lib/python3.7/site-packages/sorl/thumbnail/
ADD /docker-change/usr/local/lib/python3.7/site-packages/sorl/thumbnail/parsers.py /usr/local/lib/python3.7/site-packages/sorl/thumbnail/
ADD /docker-change/usr/local/lib/python3.7/site-packages/sorl/thumbnail/base.py /usr/local/lib/python3.7/site-packages/sorl/thumbnail/

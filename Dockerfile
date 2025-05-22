FROM registry.gitlab.com/thelabnyc/python:3.13.690@sha256:68d574f527558213f8ddec0c2cc817292f11cd1a9c0d379ba746359344cca04d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

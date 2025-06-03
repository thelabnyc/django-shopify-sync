FROM registry.gitlab.com/thelabnyc/python:3.13.723@sha256:b9aeb7d415f98544842bd03b3a5365219c9caf23ad8bdc1cb6b4e59ae16436b5

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

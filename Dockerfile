FROM registry.gitlab.com/thelabnyc/python:3.13.719@sha256:bb4407fb7895ec7ddcb2eaa23dda805fc368e50b47934904efc254196be7975e

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

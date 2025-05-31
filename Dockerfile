FROM registry.gitlab.com/thelabnyc/python:3.13.721@sha256:477cef5334457395e749045ac56d7e8c6ef3c46c52d31f987f3e8371ca56a472

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

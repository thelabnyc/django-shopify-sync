FROM registry.gitlab.com/thelabnyc/python:3.13.877@sha256:3367a09001ff57f2151ffb5ab038f1d2e4940d6d5ed9b6c7bc22662d7336cdda

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

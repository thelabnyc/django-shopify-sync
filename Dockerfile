FROM registry.gitlab.com/thelabnyc/python:3.13.761@sha256:f229d762f39c19e52a61da88591806e81ea5f003ebb0b811370596d7c5557fe6

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

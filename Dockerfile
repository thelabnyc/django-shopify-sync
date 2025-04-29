FROM registry.gitlab.com/thelabnyc/python:py313@sha256:96701c6765dec94543150ea26127ab56bc0af15c7c2f5c40b8c28e4572c5de0f

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

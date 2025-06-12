FROM registry.gitlab.com/thelabnyc/python:3.13.743@sha256:1d592f14648a5c9ae8854c15f6c4be1d0775f1dc49fcac428cca615c3ee59b53

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

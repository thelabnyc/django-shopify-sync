FROM registry.gitlab.com/thelabnyc/python:3.13.1058@sha256:cddba48f8538a61ff9903f839391fea6afc9433903f527b27d8191bd490453d8

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

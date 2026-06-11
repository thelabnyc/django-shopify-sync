FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:423a0201e46bcdfa1cab79bb589e56c051c984508160b2ea78ea2de2e76eb4ae

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

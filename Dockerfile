FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:780c091c3d03ac248b62966f4224d28ee73d8472c8784182ef260913b49c627e

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

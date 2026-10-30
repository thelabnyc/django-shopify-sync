FROM registry.gitlab.com/thelabnyc/python:3.15@sha256:5809c3d8a1e7cdae6988a38e7e593f76015915e8f156741fca1b374532ce3376

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

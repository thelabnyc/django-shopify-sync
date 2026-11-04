FROM registry.gitlab.com/thelabnyc/python:3.15@sha256:5b1ae39e6c5d091331ff25e6c95de2b3d2531018efaec523b45ce5ae2de2c88c

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

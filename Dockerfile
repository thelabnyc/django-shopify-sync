FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:3462ac69b4a9a168f05d3d3a553f560f61dbd284e8daa4f5449170617eff7bc6

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

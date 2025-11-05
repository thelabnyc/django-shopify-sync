FROM registry.gitlab.com/thelabnyc/python:3.13.1067@sha256:efea96da5f636ea2aca84db9060becbd8b67d8ee6cce4fd8fbe8daa0add83a14

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

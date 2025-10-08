FROM registry.gitlab.com/thelabnyc/python:3.13.997@sha256:0783ea45da45382080c1dfea3cc8fd3507d2100ad1e0c1ef944e100713b58642

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

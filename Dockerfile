FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:8dee742000fbbad13dec9fb68c1d60d9da07aaab3aae2411a4fd952e8fdf3465

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

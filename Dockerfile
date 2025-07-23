FROM registry.gitlab.com/thelabnyc/python:3.13.853@sha256:d0d63bef772e7a0af0e711f791d791702292e000b0d2068e489247c479b52e75

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

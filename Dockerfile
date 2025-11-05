FROM registry.gitlab.com/thelabnyc/python:3.13.1061@sha256:a7d27a45c344bda968932dae7cc0c86744e115280cdb29f36ca1973d2c7e728a

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

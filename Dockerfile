FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:7ea66bdf8421dd91f5ad0313efce74c0f0f0bfef3aff7c4be576703d7225fdcb

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

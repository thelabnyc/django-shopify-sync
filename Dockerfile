FROM registry.gitlab.com/thelabnyc/python:py313@sha256:efecf1d54180e040a131baaed3a12437ec8f3510372e87d7d9d4919d145db10e

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

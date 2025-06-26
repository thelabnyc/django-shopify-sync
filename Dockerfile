FROM registry.gitlab.com/thelabnyc/python:3.13.781@sha256:297c2be73d80865acd7b482aba411ef7212799ef13957f6176ff1b29e68e808d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

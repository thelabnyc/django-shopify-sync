FROM registry.gitlab.com/thelabnyc/python:py313@sha256:e1ed3aaeb702ac20c0340dcb09ae51d125738cabaa48516df73e98eb733fa91d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

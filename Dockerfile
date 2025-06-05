FROM registry.gitlab.com/thelabnyc/python:3.13.730@sha256:48ead35b07386d36b46420c486875cc8448690219158fd92f221546a6d4d4245

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

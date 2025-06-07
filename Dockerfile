FROM registry.gitlab.com/thelabnyc/python:3.13.737@sha256:407e710f73e88a66ab3ccb868211496f7c85e034fc752464c02d2dc50ba6316d

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

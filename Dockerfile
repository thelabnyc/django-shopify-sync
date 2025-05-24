FROM registry.gitlab.com/thelabnyc/python:3.13.709@sha256:6d4cf033a7321256f5939a589af11621197989791a824fd9d92abcdf72e03280

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

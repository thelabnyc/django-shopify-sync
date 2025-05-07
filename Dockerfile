FROM registry.gitlab.com/thelabnyc/python:3.13.671@sha256:54aa7c9bf855f374a648d67bb1444575634f54cdd73517f93afb728b6963e5be

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

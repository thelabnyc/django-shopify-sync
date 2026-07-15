FROM registry.gitlab.com/thelabnyc/python:3.14@sha256:c85a264b8085b45ee2eb31c2cdffa84fa3f013cfe36a0950391268715e0357af

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN uv sync

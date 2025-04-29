FROM registry.gitlab.com/thelabnyc/python:py313@sha256:f66034dd9cb8e03d350cf81b6fba002f8241a1640d525ad1f77b6f3374e1c47b

RUN mkdir /code
WORKDIR /code

ADD . /code/
RUN poetry install --no-interaction

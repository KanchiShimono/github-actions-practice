FROM python:3.7.5-stretch

COPY "Pipfile" "/Pipfile"
COPY "Pipfile.lock" "/Pipfile.lock"
RUN set -x; \
  pip install --upgrade pip
RUN set -x; \
  pip install pipenv
RUN set -x; \
  pipenv install --system

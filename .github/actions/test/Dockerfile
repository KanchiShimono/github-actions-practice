FROM python:3.7.5-stretch

LABEL "com.github.actions.name"="Check"
LABEL "com.github.actions.description"="Run unit tests"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

COPY "Pipfile" "/Pipfile"
COPY "Pipfile.lock" "/Pipfile.lock"
RUN set -x; \
  pip install --upgrade pip
RUN set -x; \
  pip install pipenv
RUN set -x; \
  pipenv install --system --dev

RUN rm Pipfile Pipfile.lock

ENV PYTHONPATH=./python
ENTRYPOINT ["/entrypoint.sh"]

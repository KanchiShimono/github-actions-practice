FROM python:3.7.5-stretch

LABEL "com.github.actions.name"="Check"
LABEL "com.github.actions.description"="Run unit tests"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

COPY "requirements.txt" "/requirements.txt"
RUN set -x; \
  pip install --upgrade pip
RUN set -x; \
  pip install -r requirements.txt

ENV PYTHONPATH=./python
ENTRYPOINT ["/entrypoint.sh"]

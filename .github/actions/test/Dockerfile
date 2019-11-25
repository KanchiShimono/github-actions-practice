FROM python:3.7.5-stretch

LABEL "com.github.actions.name"="Check"
LABEL "com.github.actions.description"="Run unit tests"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

COPY "python" "/python/python"
COPY "setup.py" "/python/setup.py"
COPY "setup.cfg" "/python/setup.cfg"
COPY "Pipfile" "/python/Pipfile"
COPY "Pipfile.lock" "/python/Pipfile.lock"
RUN set -x; \
  pip install --upgrade pip
RUN set -x; \
  pip install pipenv

WORKDIR /python
RUN set -x; \
  pip install .
RUN set -x; \
  pipenv install --system --dev

RUN rm -rf python setup.py setup.cfg Pipfile Pipfile.lock

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]

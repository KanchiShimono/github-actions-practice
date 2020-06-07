FROM python:3.7.5-stretch

ARG WORK_DIR=/work

LABEL "com.github.actions.name"="Check"
LABEL "com.github.actions.description"="Run static analysis"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

COPY "python" "${WORK_DIR}/python"
COPY "setup.py" "${WORK_DIR}/setup.py"
COPY "setup.cfg" "${WORK_DIR}/setup.cfg"

RUN set -x; \
  curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  apt update && \
  apt install -y --no-install-recommends \
    nodejs \
    npm && \
  rm -rf /var/lib/apt/lists/*

RUN set -x; \
  npm install --global pyright

RUN set -x; \
  pip install --upgrade pip

WORKDIR ${WORK_DIR}
RUN set -x; \
  pip install '.[test]'

RUN rm -rf ${WORK_DIR}

ENTRYPOINT ["/entrypoint.sh"]

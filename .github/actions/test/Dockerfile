FROM python:3.7.5-stretch

ARG WORK_DIR=/work

LABEL "com.github.actions.name"="Check"
LABEL "com.github.actions.description"="Run unit tests"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

COPY "python" "${WORK_DIR}/python"
COPY "setup.py" "${WORK_DIR}/setup.py"
COPY "setup.cfg" "${WORK_DIR}/setup.cfg"

RUN set -x; \
  pip install --upgrade pip

WORKDIR ${WORK_DIR}
RUN set -x; \
  pip install '.[test]'

RUN rm -rf ${WORK_DIR}

ENTRYPOINT ["/entrypoint.sh"]

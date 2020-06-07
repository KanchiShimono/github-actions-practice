#!/bin/sh

JOB_RETURN_CODE=0

set -e

log() {
    date_str=`date "+%F %T"`
    echo "[${date_str}] ${1}"
}

log_info() {
    log "info ${1}"
}

log_error() {
    log "error ${1}"
}

set_job_is_failed() {
    JOB_RETURN_CODE=1
}

check_return_code() {
    CODE=${?}
    if [ ${CODE} -ne 0 ]; then
        log_error "${1}"
        set_job_is_failed
    fi
}

log_info "linting with flake8"
flake8 python tests
check_return_code "failed to lint by flake8"

log_info "linting with mypy"
# tests does not contains __init__.py so wild card is necessary for check all files
mypy ./python ./tests/**/*.py
check_return_code "failed to lint by mypy"

log_info "linting with pyright"
pyright
check_return_code "failed to lint by pyright"

exit ${JOB_RETURN_CODE}

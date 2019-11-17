#!/bin/sh

set -e
flake8 python tests
find ./python -type f -name "*.py" | xargs -I{} mypy --strict {}
find ./tests -type f -name "*.py" | xargs -I{} mypy --strict {}

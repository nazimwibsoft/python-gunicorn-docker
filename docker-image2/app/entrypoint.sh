#!/usr/bin/env sh
set -e
pip install --upgrade pip &&
pip install --no-cache-dir -r requirements.txt &&
gunicorn --conf "/app/gunicorn.conf.py" "$APPLICATION_MODULE"
exec "$@"
#!/bin/bash

export WEBAPP_HOST="0.0.0.0"
export WEBAPP_PORT="8080"

source $HOME/.poetry/env
poetry run uvicorn webapp.main:app --host "$WEBAPP_HOST" --port $WEBAPP_PORT

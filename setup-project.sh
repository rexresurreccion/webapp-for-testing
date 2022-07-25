#!/bin/bash

source $HOME/.poetry/env
poetry env use /bin/python3
source $(poetry env info -p)/bin/activate
poetry install

#!/bin/bash

docker run --rm -it --name mywebapp --entrypoint "/bin/bash" --network=host rexresurreccionhome/webapp-for-testing:latest

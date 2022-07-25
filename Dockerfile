FROM amazonlinux:latest

USER root

RUN yum install python3 -y

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3

WORKDIR /home/webapp

RUN mkdir -p ./webapp

#COPY ./poetry.lock
#COPY ./pyproject.toml
#COPY ./run-webapp.sh
#COPY ./setup-project.sh
#COPY ./webapp

COPY . ./webapp/

WORKDIR /home/webapp/webapp

RUN ./setup-project.sh

CMD ./run-webapp.sh

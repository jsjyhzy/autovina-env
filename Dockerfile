FROM python:3.6.8-slim

RUN apt-get update &&\
apt-get upgrade -y &&\
apt-get install -y autodockvina openbabel

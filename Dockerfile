FROM python:3.6.8-slim

RUN apt-get update &&\
apt-get upgrade -y &&\
apt-get install -y autodock-vina git cmake build-essential &&\
git clone https://github.com/openbabel/openbabel.git &&\
cd openbabel &&\
mkdir ob-build &&\
cd ob-build &&\
cmake .. &&\
make install &&\
apt-get purge -y git cmake &&\
apt-get autoremove -y &&\
apt-get autoclean

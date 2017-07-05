FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install curl
RUN curl -sL http://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install libcairo2-dev
RUN apt-get install libjpeg8-dev
RUN apt-get install libpango1.0-dev
RUN apt-get install libgif-dev
RUN apt-get install build-essential
RUN apt-get install g++

RUN npm install -g canvas
RUN npm install -g mdgen

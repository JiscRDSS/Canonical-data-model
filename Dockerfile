FROM ubuntu:trusty

USER root

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL http://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install -y libcairo2-dev
RUN apt-get install -y libjpeg8-dev
RUN apt-get install -y libpango1.0-dev
RUN apt-get install -y libgif-dev
RUN apt-get install -y build-essential
RUN apt-get install -y g++

RUN npm install -g canvas
RUN npm install -g mdgen

FROM node:8.1

RUN apt-get update && apt-get -y install libcairo2-dev \
    libjpeg8-dev \
    libpango1.0-dev \
    libgif-dev \
    build-essential \
    g++

RUN npm install
RUN npm install -g canvas
RUN npm install -g mdgen

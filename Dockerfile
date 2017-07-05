FROM node:8.1

RUN apt-get update \
    && apt-get install libcairo2-dev \
    && apt-get install libjpeg8-dev \
    && apt-get install libpango1.0-dev \
    && apt-get install libgif-dev \
    && apt-get install build-essential \
    && apt-get install g++

RUN npm install -g canvas
RUN npm install -g mdgen

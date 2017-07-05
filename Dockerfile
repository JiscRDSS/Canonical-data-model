FROM node:8.1

RUN sudo apt-get update \
    && sudo apt-get install libcairo2-dev \
    && sudo apt-get install libjpeg8-dev \
    && sudo apt-get install libpango1.0-dev \
    && sudo apt-get install libgif-dev \
    && sudo apt-get install build-essential \
    && sudo apt-get install g++

RUN npm install -g canvas
RUN npm install -g mdgen

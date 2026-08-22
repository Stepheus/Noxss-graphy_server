FROM node:hydrogen-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm apt-get update && apt-get upgrade -y && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* &&\
    install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js

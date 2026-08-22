FROM node:26.7.0-trixie-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm apt-get update && apt-get upgrade -y && \
    apt-get install -y git git-man && \
    rm -rf /var/lib/apt/lists/* &&\
    install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js

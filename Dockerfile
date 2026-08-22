FROM node:26.7.0-trixie-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm apt-get update && apt-get upgrade -y &&\
    apt-get install -y --no-install-recommends git git-man liblastlog2-2=2.41.5-0+deb13u1 util-linux/liblastlog2-2@2.41.5-0+deb13u1 acl libacl1 &&\
    rm -rf /var/lib/apt/lists/* &&\
    install &&\
    apk update &&\
    apk upgrade
EXPOSE  4000
CMD node graphserver.js

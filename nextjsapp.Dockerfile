# FROM node:lts-buster-slim
FROM ubuntu:22.04
# insttall Node.js and Git.
RUN apt update -y &&\
    apt autoremove -y &&\
    apt install -y curl software-properties-common &&\
    curl -o /tmp/nodejs.deb https://deb.nodesource.com/node_16.x/pool/main/n/nodejs/nodejs_16.17.0-deb-1nodesource1_amd64.deb &&\
    apt install -y /tmp/nodejs.deb &&\
    add-apt-repository ppa:git-core/ppa &&\
    apt update -y &&\
    apt install -y git &&\
    rm /tmp/nodejs.deb &&\
    rm -rf /var/lib/apt/lists/
WORKDIR /app
RUN npx create-next-app sample-app --typescript
# git clone
# WORKDIR /app/sample-app
# RUN git clone -b main https://github.com/kusa-mochi/practice-dev-in-container.git
EXPOSE 3000
EXPOSE 80

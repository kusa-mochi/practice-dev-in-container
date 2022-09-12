FROM ubuntu:22.04
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
RUN mkdir /src
WORKDIR /src
RUN npx create-next-app@latest sample-app --ts
EXPOSE 80
EXPOSE 3000

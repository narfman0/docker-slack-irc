# Build with `docker build . -t narfman0/docker-slack-irc`
FROM node:9-slim

RUN apt-get update && \
    apt-get install -y python make g++ libicu-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER node
WORKDIR /home/node

RUN npm install --production slack-irc
COPY --chown=node:node config.json /home/node/config.json

USER root
RUN npm cache clean --force

USER node
ENTRYPOINT [ "npm start -- --config /home/node/config.json" ]
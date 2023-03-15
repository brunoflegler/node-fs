FROM node:16.15.0-slim as node-fs

RUN apt update && apt -y install vim wget bash

WORKDIR /code

COPY package.json /code
COPY package-lock.json /code

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

RUN npm ci

COPY src /code/src

# CMD ["npm", "start"]

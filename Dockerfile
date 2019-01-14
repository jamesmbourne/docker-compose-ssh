# syntax=docker/dockerfile:experimental
FROM node

RUN mkdir -p ~/.ssh && \
    touch ~/.ssh/known_hosts && \
    ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts

COPY package.json .
COPY yarn.lock .

CMD [ "yarn", "install" ]
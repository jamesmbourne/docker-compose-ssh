FROM jbourne/node-bitbucket

COPY package.json .
COPY yarn.lock .

CMD [ "yarn", "install" ]
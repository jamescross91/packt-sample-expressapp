FROM node:alpine

RUN mkdir /app

WORKDIR /app

ADD package.json /app

RUN npm install

ADD . /app

CMD node index.js

EXPOSE 8081

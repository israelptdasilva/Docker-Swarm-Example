FROM node as products

LABEL author=israelptdasilva
LABEL description="A Koa app to query products from a database."

WORKDIR /usr/src/app

COPY package*.json .
RUN npm install

COPY . .

VOLUME /usr/src/app

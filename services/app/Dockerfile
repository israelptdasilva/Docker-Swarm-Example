FROM node as products

LABEL author=israelptdasilva
LABEL description="A Koa app to query products from a database."

WORKDIR /usr/src/app/

COPY package*.json /usr/src/app/
RUN npm install

COPY . .

VOLUME /usr/src/app/

ENTRYPOINT npm start

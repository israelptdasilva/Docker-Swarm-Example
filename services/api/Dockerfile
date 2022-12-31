FROM node 

LABEL author=israelptdasilva
LABEL description="A Koa api to query products from a database."

WORKDIR /usr/src/api/

COPY package*.json /usr/src/api/
RUN npm install

COPY . .

VOLUME /usr/src/api/

ENTRYPOINT npm start

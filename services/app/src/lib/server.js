const router = require('./router');
const body = require('koa-body');
const Koa = require('koa');
const app = new Koa();

app.use(body.koaBody())
app.use(router.routes());
app.use(router.allowedMethods());

module.exports = (database) => {
  app.context.database = database;
  return app;
};

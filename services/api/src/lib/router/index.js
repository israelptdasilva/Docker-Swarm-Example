const products = require('./products');
const Router = require('@koa/router');
const router = new Router();

router.get('/products', products.list);

module.exports = router;

function Product() {}

Product.prototype.list = async (ctx) => {
  const products = await ctx.database.products();
  ctx.body = products;
  ctx.status = 200;
};

module.exports = new Product();

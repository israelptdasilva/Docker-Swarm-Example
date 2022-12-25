const mysql = require('mysql2/promise');

function Database() {
  (async () => {
    this.connection = await mysql.createConnection({
      host: process.env.MYSQL_HOST,
      user: process.env.MYSQL_USER,
      password: process.env.MYSQL_PASSWORD,
      database: process.env.MYSQL_DATABASE
    });
  })();
}

Database.prototype.products = async function() {
  const query = 'select * from product';
  const result = await this.connection.execute(query);
  return result[0] ?? [];
};

module.exports = new Database();

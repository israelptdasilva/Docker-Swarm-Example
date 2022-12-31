const database = require('./services/mysql');
const server = require('./lib/server');
const app = server(database);
app.listen(80);
console.log('Server listening on port 80');

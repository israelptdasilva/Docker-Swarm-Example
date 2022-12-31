const { database, fixtures } = require('./lib/databaseMock');
const request = require('supertest');
const server = require('../src/lib/server');
const app = server(database);

describe('Products route', () => {
  describe('GET /products', () => {
    test('returns all products', async () => {
      const fixture = fixtures.products;
      const stub = function() { return fixture };
      app.context.database.products = stub;
      
      const response = await request(app.callback()).get('/products'); 
      expect(response.body).toMatchObject(fixture);
      expect(response.status).toBe(200);
    });
  });
});

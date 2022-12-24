function DatabaseMock() {}

DatabaseMock.prototype.products = async function() {
  return [];
};

function DatabaseFixtures() {}

DatabaseFixtures.prototype.products = [
  {
    id: 1, 
    name: 'T-Shirt',
    price: '10',
    details:{
      size: ['s','m','l'],
      color: 'blue'
    }
  }
];

exports.database = new DatabaseMock();
exports.fixtures = new DatabaseFixtures();


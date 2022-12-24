USE products;

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL,
  details JSON
);

INSERT INTO products (name, price, details) VALUES (
  'T-Shirt', 10.00, '{"color": "blue", "size": ["s", "m", "l"]}' 
);

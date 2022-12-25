USE products;

CREATE TABLE IF NOT EXISTS product_category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20),
  description VARCHAR(50),
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  description VARCHAR(100),
  price DECIMAL,
  category_id INT, 
  FOREIGN KEY (category_id) REFERENCES product_category(id),
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS product_order (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantity INT,
  product_id INT,
  FOREIGN KEY (product_id) REFERENCES product(id),
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO product_category (name, description) VALUES (
  'Teddy Bear', 'Many types of teddy bears'
);

INSERT INTO product (name, description, price, category_id) VALUES (
  'Unicorn', 'The perfect unicorn for a birthday gift', 10.0, 1
);

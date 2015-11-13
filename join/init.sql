CREATE TABLE item
(
  item_id SERIAL PRIMARY KEY,
  description VARCHAR(64) NOT NULL,
  cost_price NUMERIC(7,2),
  sell_price NUMERIC(7,2)
);

CREATE TABLE item1
(
  item_id SERIAL PRIMARY KEY,
  description VARCHAR(64) NOT NULL,
  cost_price NUMERIC(7,2),
  sell_price NUMERIC(7,2)
);

CREATE TABLE item2
(
  item_id SERIAL PRIMARY KEY,
  description VARCHAR(64) NOT NULL,
  cost_price NUMERIC(7,2),
  sell_price NUMERIC(7,2)
);

CREATE TABLE stock
(
  item_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  CONSTRAINT stock_pk PRIMARY KEY(item_id)
);

CREATE TABLE part
(
  id INTEGER,
  description TEXT,
  parent_id INTEGER
);

INSERT INTO item(description, cost_price, sell_price) VALUES('Wood Puzzle', 15.23, 21.95);
INSERT INTO item(description, cost_price, sell_price) VALUES('Rubik Cube', 7.45, 11.49);
INSERT INTO item(description, cost_price, sell_price) VALUES('Linux CD', 1.99, 2.49);
INSERT INTO item(description, cost_price, sell_price) VALUES('Tissues', 2.11, 3.99);
INSERT INTO item(description, cost_price, sell_price) VALUES('Picture Frame', 7.54, 9.95);
INSERT INTO item(description, cost_price, sell_price) VALUES('Fan Small', 9.23, 15.75);
INSERT INTO item(description, cost_price, sell_price) VALUES('Fan Large', 13.36, 19.95);
INSERT INTO item(description, cost_price, sell_price) VALUES('Toothbrush', 0.75, 1.45);
INSERT INTO item(description, cost_price, sell_price) VALUES('Roman Coin', 2.34, 2.45);
INSERT INTO item(description, cost_price, sell_price) VALUES('Carrier Bag', 0.01, 0.0);
INSERT INTO item(description, cost_price, sell_price) VALUES('Speakers', 19.73, 25.32);

INSERT INTO item1(description, cost_price, sell_price) VALUES('Wood Puzzle', 15.23, 21.95);
INSERT INTO item1(description, cost_price, sell_price) VALUES('Rubik Cube', 7.45, 11.49);
INSERT INTO item1(description, cost_price, sell_price) VALUES('Linux CD', 1.99, 2.49);
INSERT INTO item1(description, cost_price, sell_price) VALUES('Tissues', 2.11, 3.99);

INSERT INTO item2(description, cost_price, sell_price) VALUES('Linux CD', 1.99, 2.49);
INSERT INTO item2(description, cost_price, sell_price) VALUES('Tissues', 2.11, 3.99);
INSERT INTO item2(description, cost_price, sell_price) VALUES('Picture Frame', 7.54, 9.95);
INSERT INTO item2(description, cost_price, sell_price) VALUES('Fan Small', 9.23, 15.75);
INSERT INTO item2(description, cost_price, sell_price) VALUES('Fan Large', 13.36, 19.95);
INSERT INTO item2(description, cost_price, sell_price) VALUES('Toothbrush', 0.75, 1.45);


INSERT INTO stock(item_id, quantity) VALUES(1,12);
INSERT INTO stock(item_id, quantity) VALUES(2,2);
INSERT INTO stock(item_id, quantity) VALUES(4,8);
INSERT INTO stock(item_id, quantity) VALUES(5,3);
INSERT INTO stock(item_id, quantity) VALUES(7,8);
INSERT INTO stock(item_id, quantity) VALUES(8,18);
INSERT INTO stock(item_id, quantity) VALUES(10,1);

INSERT INTO part(id, description, parent_id) VALUES (1, 'Table and chairs', NULL);
INSERT INTO part(id, description, parent_id) VALUES (2, 'Table', 1);
INSERT INTO part(id, description, parent_id) VALUES (3, 'Chair', 1);

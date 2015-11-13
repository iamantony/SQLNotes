CREATE TABLE customer
(
  customer_id SERIAL PRIMARY KEY,
  title CHAR(4),
  fname VARCHAR(32),
  lname VARCHAR(32) NOT NULL,
  addressline VARCHAR(64),
  town VARCHAR(32),
  zipcode CHAR(10) NOT NULL,
  phone VARCHAR(16)
);

CREATE TABLE item
(
  item_id SERIAL,
  description VARCHAR(64) NOT NULL,
  cost_price NUMERIC(7,2),
  sell_price NUMERIC(7,2),
  CONSTRAINT item_pk PRIMARY KEY(item_id)
);

CREATE TABLE orderinfo
(
  orderinfo_id SERIAL,
  customer_id INTEGER NOT NULL,
  DATE_placed DATE NOT NULL,
  DATE_shipped DATE,
  shipping NUMERIC(7,2),
  CONSTRAINT orderinfo_pk PRIMARY KEY(orderinfo_id)
);

CREATE TABLE stock
(
  item_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  CONSTRAINT stock_pk PRIMARY KEY(item_id)
);

INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Miss','Jenny','Stones','27 Rowan Avenue','Hightown','NT2 1AQ','023 9876');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Andrew','Stones','52 The Willows','Lowtown','LT5 7RA','876 3527');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Miss','Alex','Matthew','4 The Street','Nicetown','NT2 2TX','010 4567');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Adrian','Matthew','The Barn','Yuleville','YV67 2WR','487 3871');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Simon','Cozens','7 Shady Lane','Oakenham','OA3 6QW','514 5926');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Neil','Matthew','5 Pasture Lane','Nicetown','NT3 7RT','267 1232');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Richard','Stones','34 Holly Way','Bingham','BG4 2WE','342 5982');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mrs','Ann','Stones','34 Holly Way','Bingham','BG4 2WE','342 5982');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mrs','Christine','Hickman','36 Queen Street','Histon','HT3 5EM','342 5432');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Mike','Howard','86 Dysart Street','Tibsville','TB3 7FG','505 5482');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Dave','Jones','54 Vale Rise','Bingham','BG3 8GD','342 8264');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Richard','Neill','42 Thatched Way','Winnersby','WB3 6GQ','505 6482');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mrs','Laura','Hardy','73 Margarita Way','Oxbridge','OX2 3HX','821 2335');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','Bill','ONeill','2 Beamer Street','Welltown','WT3 8GM','435 1234');
INSERT INTO customer(title, fname, lname, addressline, town, zipcode, phone) VALUES('Mr','David','Hudson','4 The Square','Milltown','MT2 6RT','961 4526');

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

INSERT INTO orderinfo(customer_id, date_placed, date_shipped, shipping) VALUES(3,'03-13-2004','03-17-2004', 2.99);
INSERT INTO orderinfo(customer_id, date_placed, date_shipped, shipping) VALUES(8,'06-23-2004','06-24-2004', 0.00);
INSERT INTO orderinfo(customer_id, date_placed, date_shipped, shipping) VALUES(15,'09-02-2004','09-12-2004', 3.99);
INSERT INTO orderinfo(customer_id, date_placed, date_shipped, shipping) VALUES(13,'09-03-2004','09-10-2004', 2.99);
INSERT INTO orderinfo(customer_id, date_placed, date_shipped, shipping) VALUES(8,'07-21-2004','07-24-2004', 0.00);

INSERT INTO stock(item_id, quantity) VALUES(1,12);
INSERT INTO stock(item_id, quantity) VALUES(2,2);
INSERT INTO stock(item_id, quantity) VALUES(4,8);
INSERT INTO stock(item_id, quantity) VALUES(5,3);
INSERT INTO stock(item_id, quantity) VALUES(7,8);
INSERT INTO stock(item_id, quantity) VALUES(8,18);
INSERT INTO stock(item_id, quantity) VALUES(10,1);

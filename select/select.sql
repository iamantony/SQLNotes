SELECT * FROM item;
SELECT cost_price FROM item;

SELECT * FROM item 
  WHERE cost_price > (SELECT avg(cost_price) FROM item) AND
  cost_price < (SELECT avg(sell_price) FROM item);

SELECT * FROM stock WHERE item_id IN
  (SELECT item_id FROM item WHERE cost_price > 10);
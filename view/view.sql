CREATE VIEW item_view AS
  SELECT item_id, description FROM item;

SELECT * FROM item_view;
INSERT INTO item(description, cost_price, sell_price) VALUES('Mouse', 1.73, 2.32);
SELECT * FROM item_view;

CREATE VIEW item_info AS
  SELECT it.item_id, it.description, it.sell_price, st.quantity FROM item it, stock st
  WHERE it.item_id = st.item_id;

SELECT * FROM item_info;

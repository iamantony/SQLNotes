SELECT * FROM item1 UNION SELECT * FROM item2;

SELECT p1.description AS "Combined", p2.description AS "Parts" FROM part p1, part p2
  WHERE p1.id = p2.parent_id;

SELECT i.description, s.quantity FROM item i
  LEFT OUTER JOIN stock s ON i.item_id = s.item_id;

SELECT i.description, s.quantity FROM item i
  LEFT OUTER JOIN stock s ON i.item_id = s.item_id AND s.quantity > 2
  WHERE i.cost_price > 7;

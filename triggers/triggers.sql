CREATE FUNCTION func() returns TRIGGER AS $$
DECLARE
  val INTEGER;
BEGIN
  val := tg_argv[0];
  val := new.quantity + val;

  INSERT INTO test_stock(item_id, quantity) VALUES(new.item_id, val);
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER stock_upd BEFORE INSERT OR UPDATE ON stock
  FOR EACH ROW EXECUTE PROCEDURE func(120);

INSERT INTO stock(item_id, quantity) VALUES(11,2);
UPDATE stock SET quantity = 15 WHERE item_id = 2;

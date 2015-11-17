SELECT orderinfo_id, customer_id FROM orderinfo;
-- Will not delete customer, because there is a row in table 'orderinfo'
-- that reference to that customer
-- DELETE FROM customer WHERE customer_id = 3;

ALTER TABLE orderinfo DROP CONSTRAINT orderinfo_customer_id_fkey;
ALTER TABLE orderinfo ADD CONSTRAINT orderinfo_customer_id_fkey
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE;

DELETE FROM customer WHERE customer_id = 3;
SELECT orderinfo_id, customer_id FROM orderinfo;

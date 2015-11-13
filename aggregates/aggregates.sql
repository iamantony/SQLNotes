-- count()
SELECT count(*) FROM customer;
SELECT count(*) FROM customer WHERE lname = 'Matthew';

-- count() with GROUP BY
SELECT count(*), town FROM customer GROUP BY town ORDER BY town;

-- count(column_name)
SELECT count(*) FROM customer;
-- will not count NULL values
SELECT count(phone) FROM customer;

SELECT count(DISTINCT title) FROM customer;

-- min()
SELECT min(customer_id) FROM customer;
SELECT min(fname) FROM customer;
SELECT min(phone) FROM customer;

-- max()
SELECT max(customer_id) FROM customer;
SELECT max(fname) FROM customer;
SELECT max(phone) FROM customer;

-- sum()
SELECT sum(customer_id) FROM customer;

-- avg()
SELECT avg(customer_id) FROM customer;

-- abs()
SELECT abs(ints) FROM numbers;

-- round()
SELECT round(floats) FROM numbers;
SELECT round(78.09878978, 2);

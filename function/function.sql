-- Basic
CREATE FUNCTION add_one(INTEGER) RETURNS INTEGER AS '
  BEGIN
    RETURN $1 + 1;
  END;
'  LANGUAGE 'plpgsql';

SELECT * FROM add_one(1);

-- Without quoting
CREATE FUNCTION add_two(INTEGER) RETURNS INTEGER AS
$BODY$
  BEGIN
    RETURN $1 + 2;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM add_two(1);

-- With name for argument
CREATE FUNCTION add_three(value INTEGER) RETURNS INTEGER AS
$BODY$
  BEGIN
    RETURN value + 3;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM add_three(1);

-- Function overloading
CREATE FUNCTION add_three(value REAL) RETURNS INTEGER AS
$BODY$
  BEGIN
    RETURN value;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM add_three(1.0);

-- Declaration of variables and aliasing
CREATE FUNCTION calc_sum(first INTEGER, INTEGER) RETURNS INTEGER AS
$BODY$
  DECLARE
    result INTEGER;
    second ALIAS FOR $2;
    const CONSTANT INTEGER NOT NULL DEFAULT 42;
    copytype const%TYPE;
  BEGIN
    result := first + second;
    RETURN result;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM calc_sum(5, 6);

CREATE FUNCTION get_zip(name TEXT) RETURNS TEXT AS
$BODY$
  DECLARE
    cust_row customer%rowtype;
  BEGIN
    RAISE DEBUG 'Input value is %', name;
    IF name = ''
    THEN
      RAISE EXCEPTION 'Invalid value';
    END IF;

    SELECT * INTO cust_row FROM customer WHERE customer.fname = name LIMIT 1;
    RETURN cust_row.zipcode;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM get_zip('Dave');
SELECT * FROM get_zip('');

CREATE FUNCTION int_to_str(val INTEGER) RETURNS TEXT AS
$BODY$
  DECLARE
    result TEXT := '';
  BEGIN
    result := CASE
              WHEN val = 0
                THEN '0'
              WHEN val = 1
                THEN '1'
              WHEN val = 2
                THEN '2'
              WHEN val = 3
                THEN '3'
              WHEN val = 4
                THEN '4'
              WHEN val = 5
                THEN '5'
              WHEN val = 6
                THEN '6'
              WHEN val = 7
                THEN '7'
              WHEN val = 8
                THEN '8'
              WHEN val = 9
                THEN '9'
              ELSE 'oops'
      END;
    RETURN result;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM int_to_str(5);
SELECT * FROM int_to_str(56);

CREATE FUNCTION counting() RETURNS INTEGER AS
$BODY$
  DECLARE
    result INTEGER := 0;
  BEGIN
    <<counter>>
    LOOP
      result := result + 1;
      EXIT counter WHEN result > 10;
    END LOOP;

    WHILE result > 0
    LOOP
      result := result - 72;
    END LOOP;

    DECLARE
      val INTEGER := 0;
    BEGIN
      FOR ids IN 1 .. 2
      LOOP
        SELECT quantity INTO val FROM stock WHERE stock.item_id = ids;
        result := result + val;
      END LOOP;
    END;

    DECLARE
      stock_row record;
    BEGIN
      FOR stock_row IN SELECT * FROM stock
      LOOP
        result := result + stock_row.quantity;
      END LOOP;
    END;

    RETURN result;
  END;
$BODY$
  LANGUAGE 'plpgsql';

SELECT * FROM counting();

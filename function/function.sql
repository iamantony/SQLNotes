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

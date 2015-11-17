-- Basic table
CREATE TABLE movie
(
    name CHAR(100),
    year INTEGER,
    length INT
);

INSERT INTO movie(name, year, length) VALUES ('Star Wars', 1977, 124);

-- Constraints for values in columns
CREATE TABLE constr
(
  colnotnull INTEGER NOT NULL,
  colunique INTEGER UNIQUE,
  colprikey INTEGER PRIMARY KEY,
  coldefaule INTEGER DEFAULT 42,
  colcheck INTEGER CHECK(colcheck % 2 = 0 )
);

INSERT INTO constr(colnotnull, colunique, colprikey, coldefaule, colcheck) VALUES (1, 1, 1, 1, 0);
-- Violation for the first column - null value
--INSERT INTO constr(colunique, colprikey, coldefaule, colcheck) VALUES (2, 2, 1, 0);
-- Violation for the second column - not unique value
--INSERT INTO constr(colnotnull, colunique, colprikey, coldefaule, colcheck) VALUES (1, 1, 2, 1, 0);
-- Violation for the third column - not unique primary key value
--INSERT INTO constr(colnotnull, colunique, colprikey, coldefaule, colcheck) VALUES (1, 2, 1, 1, 0);
-- Use default value for the fourth column
INSERT INTO constr(colnotnull, colunique, colprikey, colcheck) VALUES (1, 2, 2, 2);
-- Violation for the fifth column - check fail
--INSERT INTO constr(colnotnull, colunique, colprikey, coldefaule, colcheck) VALUES (1, 3, 3, 1, 1);

CREATE TEMPORARY TABLE temp
(
    val INTEGER
);

INSERT INTO temp(val) VALUES(1);

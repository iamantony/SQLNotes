CREATE TABLE bools
(
  init TEXT,
  res BOOLEAN
);

CREATE TABLE chars
(
  name TEXT,
  rating CHAR(10),
  description VARCHAR(10)
);

CREATE TABLE integers
(
  si SMALLINT,
  int INTEGER,
  bi BIGINT
);

CREATE TABLE floats
(
  real REAL,
  double DOUBLE PRECISION,
  num NUMERIC(5, 2)
);

CREATE TABLE dates
(
  date DATE,
  time TIME
);

CREATE TABLE arrays
(
  name CHAR(5),
  intarr INTEGER ARRAY[5]
);

INSERT INTO bools(init, res) VALUES('TRUE', 'TRUE');
INSERT INTO bools(init, res) VALUES('true', 'true');
INSERT INTO bools(init, res) VALUES('tRuE', 'tRuE');
INSERT INTO bools(init, res) VALUES('t', 't');
INSERT INTO bools(init, res) VALUES('1', '1');
INSERT INTO bools(init, res) VALUES('FALSE', 'FALSE');
INSERT INTO bools(init, res) VALUES('false', 'false');
INSERT INTO bools(init, res) VALUES('faLse', 'faLse');
INSERT INTO bools(init, res) VALUES('f', 'f');
INSERT INTO bools(init, res) VALUES('0', '0');
INSERT INTO bools(init, res) VALUES('NULL', NULL);
SELECT * FROM bools;

INSERT INTO chars(name, rating, description) VALUES ('Incredible movie', 'AF', 'Awesome');
INSERT INTO chars(name, rating, description) VALUES (NULL, NULL, NULL);
# Will not fit into columns
#INSERT INTO chars(name, rating, description) VALUES ('Short name', 'looooong char', 'long description');

INSERT INTO integers(si, int, bi) VALUES (0, 0, 0);
INSERT INTO integers(si, int, bi) VALUES (15, 884342, 49846313468464);
INSERT INTO integers(si, int, bi) VALUES (-32768, -2147483648, -9223372036854775808);
INSERT INTO integers(si, int, bi) VALUES (32767, 2147483647, 9223372036854775807);

INSERT INTO floats(real, double, num) VALUES (0, 0, 0);
INSERT INTO floats(real, double, num) VALUES (5948.999, 2.4093809809435438, 2.41);
INSERT INTO floats(real, double, num) VALUES (-3856.8544, -5.23987911909090094, -5.23987911909090094);
INSERT INTO floats(real, double) VALUES ('-Infinity', 'Infinity');
INSERT INTO floats(real, double) VALUES ('Nan', 'NaN');
INSERT INTO floats(real, double) VALUES ('Nan', 'NaN');
# Will not be inserted
#INSERT INTO floats(real, double) VALUES ('ff', 'oio');

INSERT INTO dates(date, time) VALUES ('2015-11-02', '04:10:15');

INSERT INTO arrays(name, intarr) VALUES('one', '{15, 1, 0, 596, 3}');
INSERT INTO arrays(name, intarr) VALUES('two', '{1, 48, 0, 5, 30}');
SELECT intarr[2] FROM arrays WHERE name = 'two';

-- Magic variables
SELECT CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP, CURRENT_USER;

-- Type casting
SELECT si, si::BIGINT FROM integers;
INSERT INTO chars(name, rating, description) VALUES ('Incredible movie', 'AF', 'Awesome');
# Will not fit into columns
#INSERT INTO chars(name, rating, description) VALUES ('Short name', 'looooong char', 'long description');

INSERT INTO integers(si, int, bi) VALUES (0, 0, 0);
INSERT INTO integers(si, int, bi) VALUES (15, 884342, 49846313468464);
INSERT INTO integers(si, int, bi) VALUES (-32768, -2147483648, -9223372036854775808);
INSERT INTO integers(si, int, bi) VALUES (32767, 2147483647, 9223372036854775807);

INSERT INTO floats(real, double) VALUES (0, 0);
INSERT INTO floats(real, double) VALUES (5948.999, 2.4093809809435438);
INSERT INTO floats(real, double) VALUES (-3856.8544, -5.23987911909090094);
INSERT INTO floats(real, double) VALUES ('-Infinity', 'Infinity');
INSERT INTO floats(real, double) VALUES ('Nan', 'NaN');
INSERT INTO floats(real, double) VALUES ('Nan', 'NaN');
# Will not be inserted
#INSERT INTO floats(real, double) VALUES ('ff', 'oio');

INSERT INTO dates(date, time) VALUES ('2015-11-02', '04:10:15');
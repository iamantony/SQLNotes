-- Not Safe method of INSERT (because of serial key)
INSERT INTO film VALUES (1, 'The Pianist', 2002);

-- Update ID of id field sequence
SELECT setval('film_id_seq', 1);
-- Get current ID of id field sequence
SELECT currval('film_id_seq');

-- Safe method of INSERT
INSERT INTO film(name, year) VALUES ('Spectre', 2015);
INSERT INTO film(name, year) VALUES ('Lobster', 2015);

-- Insert new record with NULL in year field
INSERT INTO film(name) VALUES ('The Departed');
SELECT * FROM film WHERE year IS NOT NULL;

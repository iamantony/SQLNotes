SELECT * FROM movie;
DELETE FROM movie WHERE name IS NULL;
DELETE FROM movie WHERE name = 'Spectre';
-- Will delete all records
DELETE FROM movie;
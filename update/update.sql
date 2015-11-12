-- Update all rows in a table
UPDATE movie SET year = 1900;
-- Update special rows in the table
UPDATE movie SET year = 2015 WHERE name = 'Lobster';
UPDATE movie SET year = 2002 WHERE name = 'The Pianist' AND year = 1900;

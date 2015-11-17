INSERT INTO movie(name, year) VALUES('The Pianist', 2002);

BEGIN;
INSERT INTO movie(name, year) VALUES('Spectre', 2015);
SELECT * FROM movie;
COMMIT;

BEGIN;
UPDATE movie SET year = 2005 WHERE name = 'Spectre';
INSERT INTO movie(name, year) VALUES('Lobster', 2015);
ROLLBACK;

BEGIN;
UPDATE movie SET year = 2005 WHERE name = 'Spectre';
SAVEPOINT upd;
INSERT INTO movie(name, year) VALUES('Lobster', 2015);
SELECT * FROM movie;
ROLLBACK TO upd;
SELECT * FROM movie;
COMMIT;

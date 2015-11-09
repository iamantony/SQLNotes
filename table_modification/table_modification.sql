INSERT INTO movie(name, year) VALUES ('My movie', 1995);
INSERT INTO movie(name, year) VALUES ('Old movie', 1900);

ALTER TABLE movie ADD length INTEGER;
ALTER TABLE movie ADD rating REAL DEFAULT 0.0;
ALTER TABLE movie ADD description TEXT DEFAULT 'No description';
ALTER TABLE movie ADD id SERIAL PRIMARY KEY;

ALTER TABLE movie DROP rating;

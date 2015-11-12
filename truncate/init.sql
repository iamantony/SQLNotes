CREATE TABLE movie (
  id SERIAL PRIMARY KEY,
  name TEXT,
  year INTEGER
);

INSERT INTO movie(name, year) VALUES ('The Pianist', 2002);
INSERT INTO movie(name, year) VALUES ('Spectre', 2015);
INSERT INTO movie(name, year) VALUES ('Lobster', 2014);
INSERT INTO movie(name) VALUES ('The Departed');
INSERT INTO movie(year) VALUES (2000);

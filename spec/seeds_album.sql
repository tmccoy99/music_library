TRUNCATE TABLE artists RESTART IDENTITY;
TRUNCATE TABLE albums RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO artists (name, genre) VALUES ('Arctic Monkeys', 'Alternative');
INSERT INTO albums (title, release_year, artist_id) VALUES ('AM', 2013, 1);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Humbug', 2009, 1);

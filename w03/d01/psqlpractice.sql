CREATE DATABASE record_app;

\c record_app

CREATE TABLE record
(
  id serial4,
  song varchar(1000),
  artist varchar(1000)
);

ALTER TABLE record RENAME COLUMN year TO country;

INSERT INTO record (song, artist, country) VALUES ('Country Song', 'Mark Twang', 'Russia');
INSERT INTO record (song, artist, country) VALUES ('Swing Town', 'Hip Hop Charlie', 'Canada');
INSERT INTO record (song, artist, country) VALUES ('Okie Dokie', 'Katy Perry', 'Brasil');

UPDATE record SET artist='Rionel Lichie' WHERE song='Okie Dokie';

DELETE FROM record WHERE artist='Hip Hop Charlie';

SELECT * FROM record;

SELECT FROM record WHERE artist='Mark Twang';

SELECT * FROM record WHERE artist='Mark Twang';

SELECT song FROM record;

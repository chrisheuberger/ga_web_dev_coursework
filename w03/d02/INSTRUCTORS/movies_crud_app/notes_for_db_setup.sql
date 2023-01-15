CREATE DATABASE movies_app;
\c movies_app

CREATE TABLE movies
(
  id serial4 PRIMARY KEY,
  title varchar(255),
  director varchar(255),
  screenwriter varchar(255)
);

CREATE DATABASE photo_management_app;

\c photo_management_app

CREATE TABLE photos
(
  id serial4 PRIMARY KEY,
  photo varchar(255),
  event varchar(255)
);

CREATE TABLE clients
(
  id serial4 PRIMARY KEY,
  name varchar(255),
);

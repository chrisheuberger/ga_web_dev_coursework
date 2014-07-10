CREATE DATABASE grocery_store;

\c grocery_store

CREATE TABLE items
(
  id serial4 PRIMARY KEY,
  type_id varchar(255)
  item varchar(255)
);

CREATE TABLE grocery_types
(
  id serial4 PRIMARY KEY,
  comestibles boolean,
  libation boolean
);

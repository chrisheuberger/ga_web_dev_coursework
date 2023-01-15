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

CREATE TABLE comestibles
(
  id serial4 PRIMARY KEY,
  food_types varchar(255)
);


CREATE TABLE libations
(
  id serial4 PRIMARY KEY,
  drink_types varchar(40000)
);

CREATE TABLE food_types
(
  food_id integer,
  type_numbers varchar(255)

)

CREATE TABLE drink_types
(
  drink_id integer,
  type_numbers varchar(255)

)
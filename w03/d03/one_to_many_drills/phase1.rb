CREATE DATABASE farm;

\c farm

CREATE TABLE farmers
(
  id serial4 PRIMARY KEY,
  farmer_name varchar(255),
  farmer_id varchar(255)
);

CREATE TABLE cows
(
  id serial4 PRIMARY KEY,
  cow_name varchar(255),
  farmer_id varchar(255)
);

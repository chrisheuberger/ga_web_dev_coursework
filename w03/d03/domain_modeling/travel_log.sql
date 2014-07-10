CREATE DATABASE travel_log;

\c travel_log

CREATE TABLE entries
(
  id serial4 PRIMARY KEY,
  city varchar(255),
  country varchar(255)
);

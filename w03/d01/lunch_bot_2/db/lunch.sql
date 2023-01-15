
CREATE DATABASE  lunch;

\c lunch

CREATE TABLE lunches
(
  id serial4,
  lunch_name varchar(1000),
  picked_count varchar(500)
);

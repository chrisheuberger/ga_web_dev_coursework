-- NOTES!


CREATE DATABASE caws_and_users_db;

\c caws_and_users_db



CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);


CREATE TABLE caws
(
  id serial4 PRIMARY KEY,
  user_id integer,
  message varchar(255)
);


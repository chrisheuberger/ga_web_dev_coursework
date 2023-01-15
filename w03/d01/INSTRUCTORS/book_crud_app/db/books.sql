

CREATE DATABASE  book_app;

\c book_app

CREATE TABLE books
(
  id serial4,
  title varchar(1000),
  author varchar(500)
);


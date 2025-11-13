
CREATE DATABASE online_bookstore;
CREATE TABLE books(
book_id INT PRIMARY KEY
);

CREATE TABLE orders(
book_id INT ,
foreign key (book_id)REFERENCES books(book_id)
);
ALTER TABLE books
ADD COLUMN ISBN VARCHAR(100) UNIQUE;

DELETE FROM books
WHERE ISBN=null;
TRUNCATE TABLE orders;

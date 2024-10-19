CREATE DATABASE IF NOT EXISTS alx_book_store;

-
USE alx_book_store;


CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);


CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE NOT NULL,
  publication_date DATE,
  foreign key (author_id) REFERENCES AUTHORS(AUTHOR_ID)
);


CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) NOT NULL UNIQUE,
  address TEXT
);


CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL,
  FOREIGN key (customer_id) REFERENCES CUSTOMERS(customer_id)
);


CREATE TABLE order_details (
  orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE NOT NULL,
  FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
  FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);
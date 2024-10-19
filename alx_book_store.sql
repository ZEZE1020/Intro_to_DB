CREATE DATABASE IF NOT EXISTS ALX_BOOK_STORE;

-
USE ALX_BOOK_STORE;


CREATE TABLE AUTHORS (
  AUTHOR_ID INT AUTO_INCREMENT PRIMARY KEY,
  AUTHOR_NAME VARCHAR(215) NOT NULL
);


CREATE TABLE BOOKS (
  BOOK_ID INT AUTO_INCREMENT PRIMARY KEY,
  TITLE VARCHAR(130) NOT NULL,
  AUTHOR_ID INT,
  PRICE DOUBLE NOT NULL,
  PUBLICATION_DATE DATE,
  FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);


CREATE TABLE CUSTOMERS (
  CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
  CUSTOMER_NAME VARCHAR(215) NOT NULL,
  EMAIL VARCHAR(215) NOT NULL UNIQUE,
  ADDRESS TEXT
);


CREATE TABLE ORDERS (
  ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
  CUSTOMER_ID INT,
  ORDER_DATE DATE NOT NULL,
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);


CREATE TABLE ORDER_DETAILS (
  ORDERDETAIL_ID INT AUTO_INCREMENT PRIMARY KEY,
  ORDER_ID INT,
  BOOK_ID INT,
  QUANTITY DOUBLE NOT NULL,
  FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
  FOREIGN KEY (BOOK_ID) REFERENCES BOOKS(BOOK_ID)
);
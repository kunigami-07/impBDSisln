CREATE TABLE BOOKS (
 ID INT PRIMARY KEY IDENTITY (1, 1),
 NAME VARCHAR(50) NOT NULL,
 PRICE INT,
 CATEGORYID INT,
 AUTHORID INT
);

CREATE TABLE CATEGORIES (ID INT PRIMARY KEY, NAME VARCHAR(50) NOT NULL,);

CREATE TABLE AUTHORS (ID INT PRIMARY KEY, NAME VARCHAR(50) NOT NULL,);

INSERT INTO
 CATEGORIES
VALUES
 (1, 'Cat-A'),
 (2, 'Cat-B'),
 (3, 'Cat-C'),
 (7, 'Cat-D'),
 (8, 'Cat-E'),
 (4, 'Cat-F'),
 (10, 'Cat-G'),
 (12, 'Cat-H'),
 (6, 'Cat-I');

INSERT INTO
 AUTHORS
VALUES
 (1, 'Author-A'),
 (2, 'Author-B'),
 (3, 'Author-C'),
 (10, 'Author-D'),
 (12, 'Author-E');

INSERT INTO
 BOOKS
VALUES
 ('Book-A', 100, 1, 2),
 ('Book-B', 200, 2, 2),
 ('Book-C', 150, 3, 2),
 ('Book-D', 100, 3, 1),
 ('Book-E', 200, 3, 1),
 ('Book-F', 150, 4, 1),
 ('Book-G', 100, 5, 5),
 ('Book-H', 200, 5, 6),
 ('Book-I', 150, 7, 8);

Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10031781
Server version: 8.0.40 Source distribution

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE BOOKS (
    ->  ID INT PRIMARY KEY IDENTITY (1, 1),
    ->  NAME VARCHAR(50) NOT NULL,
    ->  PRICE INT,
    ->  CATEGORYID INT,
    ->  AUTHORID INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'IDENTITY (1, 1),
 NAME VARCHAR(50) NOT NULL,
 PRICE INT,
 CATEGORYID INT,
 AUTHO' at line 2
mysql> 
mysql> CREATE TABLE BOOKS (
    ->  ID INT PRIMARY KEY IDENTITY (1, 1),
    ->  NAME VARCHAR(50) NOT NULL,
    ->  PRICE INT,
    ->  CATEGORYID INT,
    ->  AUTHORID INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use
 near 'IDENTITY (1, 1),
 NAME VARCHAR(50) NOT NULL,
 PRICE INT,
 CATEGORYID INT,
 AUTHO' at line 2
mysql> CREATE TABLE BOOKS (
    ->     ID INT PRIMARY KEY IDENTITY (1, 1),
    ->     NAME VARCHAR(50) NOT NULL,
    ->     PRICE DECIMAL(10, 2),
    ->     CATEGORYID INT,
    ->     AUTHORID INT,
    ->     FOREIGN KEY (CATEGORYID) REFERENCES CATEGORIES(ID),
    ->     FOREIGN KEY (AUTHORID) REFERENCES AUTHORS(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use
 near 'IDENTITY (1, 1),
    NAME VARCHAR(50) NOT NULL,
    PRICE DECIMAL(10, 2),
    CA' at line 2
mysql> CREATE TABLE CATEGORIES (ID INT PRIMARY KEY, NAME VARCHAR(50) NOT NULL,);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use
 near ')' at line 1
mysql> 

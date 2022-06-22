#CREATE DATABASE cats_app;
#USE cats_app;
##CREATE TABLE cats(name VARCHAR(50), age INT);
#CREATE TABLE cats(name VARCHAR(50) NOT NULL, age INT NOT NULL);
#INSERT INTO cats(name, age)
#VALUES ('Charlie', 10),
#       ('Sadie', 3),
#       ('Lazy Bear', 1),
#       ('Blue', 2),
#       ('Draco', 6);

## age not defined -> age becomes NULL
#INSERT INTO cats(name) VALUES ('Alabama');
#SHOW WARNINGS;

## name & age both not defined -> both become NULL
#INSERT INTO cats() VALUES ();
#SHOW WARNINGS;

## both columns are NULL 'YES'
#DESC cats;

#SELECT * FROM cats;
#DROP TABLE cats;
#DROP DATABASE cats_app;

#### insert challenge
#CREATE DATABASE challenge;
#USE challenge;
#CREATE TABLE people(first_name VARCHAR(20), last_name VARCHAR(20), age INT);

## insert first person
#INSERT INTO people(first_name, last_name, age)
#    VALUES ('Tina', 'Belcher', 13);
#SELECT * FROM people;

## insert second person in different order
#INSERT INTO people(last_name, age, first_name)
#    VALUES ('Belcher', 42, 'Bob');
##INSERT INTO people(first_name, last_name, age)
##    VALUES ('Bob', 'Belcher', 42);
#SELECT * FROM people;

## multiple insert at once
#INSERT INTO people(first_name, last_name, age)
#VALUES ('Linda', 'Belcher', 45),
#       ('Phillip', 'Frond', 38),
#       ('Calvin', 'Fischoeder', 70);
#SELECT * FROM people;

#DROP TABLE people;
#DROP DATABASE challenge;

#### DEFAULT VALUE #############################################################
#  DROP DATABASE cats_app;
#CREATE DATABASE cats_app;
#   USE cats_app;
#CREATE TABLE cats (
#    name VARCHAR(20) DEFAULT 'unnamed' NOT NULL,
#    age  INT         DEFAULT 99        NOT NULL  # cuz this NOT NULL
#);
# #DESC cats;
#INSERT INTO cats (age) VALUES (13);  # 'unnamed', 13
#INSERT INTO cats (name) VALUES ('Blue');  # 'Blue', 99
#INSERT INTO cats (name) VALUES ('Blue');  # duplicate row
#INSERT INTO cats () VALUES ();  # 'unnamed', 99
##INSERT INTO cats (name, age) VALUES ('Montana', NULL); -> age cannot be NULL
#SELECT * FROM cats;
#  DROP TABLE cats;
#  DROP DATABASE cats_app;

##### UNIQUE ID #################################################################
#CREATE DATABASE cats_app;
#   USE cats_app;
#
#CREATE TABLE unique_cats (
#         id   INT         AUTO_INCREMENT NOT NULL,
#         name VARCHAR(50) DEFAULT 'unknown',
#         age  INT         DEFAULT 99,
#         PRIMARY KEY(id)
#       );
#  #DESC unique_cats;
#
#INSERT INTO unique_cats (name, age) VALUES ("Helena", 8);
#INSERT INTO unique_cats (name, age) VALUES ("Jacob", 3);
#INSERT INTO unique_cats (name, age) VALUES ("Irene", 2);
#INSERT INTO unique_cats (name, age) VALUES ("Dan", 7);
#
#SELECT * FROM unique_cats;
#
#  DROP TABLE unique_cats;
#  DROP DATABASE cats_app;

#### EXERCISE #################################################################
CREATE DATABASE company;
   USE company;
CREATE TABLE staff (
         id             INT         AUTO_INCREMENT     NOT NULL PRIMARY KEY,
         last_name      VARCHAR(50)                    NOT NULL,
         first_name     VARCHAR(50)                    NOT NULL,
         middle_name    VARCHAR(50),
         age            INT                            NOT NULL,
         current_status VARCHAR(50) DEFAULT 'employed' NOT NULL
       );
  DESC staff;
INSERT INTO staff (
         last_name, first_name, age
       ) VALUES (
         "Kim", "Daehoon", 27
       );
INSERT INTO staff (
         last_name, first_name, middle_name, age, current_status
       ) VALUES (
         "Lee", "Daniel", "Johnson", 44, "terminated"
       );
SELECT * FROM staff;
  DROP TABLE staff;
  DROP DATABASE company;
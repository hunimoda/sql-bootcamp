CREATE DATABASE cats_app;
USE cats_app;
#CREATE TABLE cats(name VARCHAR(50), age INT);
CREATE TABLE cats(name VARCHAR(50) NOT NULL, age INT NOT NULL);
INSERT INTO cats(name, age)
VALUES ('Charlie', 10),
       ('Sadie', 3),
       ('Lazy Bear', 1),
       ('Blue', 2),
       ('Draco', 6);

# age not defined -> age becomes NULL
INSERT INTO cats(name) VALUES ('Alabama');
SHOW WARNINGS;

# name & age both not defined -> both become NULL
INSERT INTO cats() VALUES ();
SHOW WARNINGS;

# both columns are NULL 'YES'
DESC cats;

SELECT * FROM cats;
DROP TABLE cats;
DROP DATABASE cats_app;

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
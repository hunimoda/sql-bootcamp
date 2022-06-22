CREATE DATABASE cats_app;
   USE cats_app;
CREATE TABLE cats (
         id    INT           AUTO_INCREMENT,
         name  VARCHAR(100),
         breed VARCHAR(100),
         age   INT,
         PRIMARY KEY(id)
       );
INSERT INTO cats (name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

#### PUT YOUR CODE HERE ########################################################
## select columns
#SELECT * FROM cats;  # selects all columns
#SELECT name FROM cats;  # only selects name column
#SELECT name, age FROM cats;  # selects multiple columns
#SELECT age, name FROM cats;  # order matters

## use where clause
#SELECT * FROM cats WHERE age = 4;
#SELECT * FROM cats WHERE name = 'Egg';
#SELECT * FROM cats WHERE name = 'EGG';  # case doesn't matter by default
################################################################################

#### SELECT CHALLENGES #########################################################
SELECT id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed = 'Tabby';
SELECT id, age FROM cats WHERE id = age;
################################################################################

  DROP DATABASE cats_app;
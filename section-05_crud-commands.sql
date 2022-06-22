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

################################################################################

  DROP DATABASE cats_app;
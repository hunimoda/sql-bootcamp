CREATE DATABASE cats_app;
USE cats_app;
CREATE TABLE cats(name VARCHAR(50), age INT);
INSERT INTO cats(name, age)
VALUES ('Charlie', 10),
       ('Sadie', 3),
       ('Lazy Bear', 1),
       ('Blue', 2),
       ('Draco', 6);
SELECT * FROM cats;
DROP TABLE cats;
DROP DATABASE cats_app;
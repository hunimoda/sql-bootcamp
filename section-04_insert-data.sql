CREATE DATABASE cats_app;
USE cats_app;
CREATE TABLE cats(
    name VARCHAR(50),
    age INT);
INSERT INTO cats(name, age)
    VALUES("Blue", 1);
INSERT INTO cats(age, name)
    VALUES(7, "Draco");
SELECT * FROM cats;
DROP TABLE cats;
DROP DATABASE cats_app;
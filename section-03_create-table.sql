#CREATE DATABASE cat_app;
#USE cat_app;
#CREATE TABLE cats(
#    name VARCHAR(100),
#    age INT);
#
## SHOW DATABASES;
#SHOW TABLES;
## SHOW COLUMNS FROM cats;
## DESC cats;
#
#DROP TABLE cats;
#SHOW TABLES;
## DESC cats; -> this should generate error
#
#DROP DATABASE cat_app;

# create table challenge
CREATE DATABASE challenge;
USE challenge;
CREATE TABLE pastries(
    name VARCHAR(50),
    quantity INT);
DESC pastries;
DROP TABLE pastries;
DROP DATABASE challenge;
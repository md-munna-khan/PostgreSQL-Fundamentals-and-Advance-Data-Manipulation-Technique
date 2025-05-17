## PostgreSQL Fundamentals and Advance Data Manipulation Technique

## 8-1 Using the ALTER Keyword to Modify Tables and Setting Up PostgreSQL in VS Code\
![alt text](image.png)
- if you run your psql on vs code create a file like test.sql then query your code
![alt text](image-1.png)

## 8-2 Expanding on the ALTER Keyword for Table Modification
![alt text](image-3.png)
-- Active: 1747415487712@@localhost@5432@ph

- SELECT * FROM person2;

## Add column
ALTER TABLE person2
ADD COLUMN email VARCHAR(30) NOT NULL DEFAULT 'default@gmail.com';

## Insert in column
INSERT INTO person2 VALUES(9,'mojnu',48,'mojnu@gamil.com')
## Drop in column
ALTER TABLE person2
DROP COLUMN email


## Rename in column
alter Table person2
RENAME COLUMN age to user_age;

## Change type in column
alter Table person2
alter COLUMN user_name type VARCHAR(50)
## Set Constrain in column
alter Table person2
alter COLUMN user_age set not NULL;
## Drop in column
alter Table person2
alter COLUMN user_age DROP not NULL;
-- Active: 1747415487712@@localhost@5432@ph

SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(30) NOT NULL DEFAULT 'default@gmail.com';
INSERT INTO person2 VALUES(4,'mojnu',28)

ALTER TABLE person2
DROP COLUMN email



alter Table person2
RENAME COLUMN age to user_age;
alter Table person2
alter COLUMN user_name type VARCHAR(50)

alter Table person2
alter COLUMN user_age set  NOT NULL;
alter Table person2
alter COLUMN user_age DROP not NULL;
alter Table person2
ADD constraint unique_person2_user_age UNIQUE(user_age) ; 
alter Table person2
drop constraint unique_person2_user_age ; 


TRUNCATE person2
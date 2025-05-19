CREATE Table student(
student_id SERIAL PRIMARY KEY,
roll INT UNIQUE,
student_name VARCHAR(50),
age INT,
department VARCHAR(50),
score int,
student_status BOOLEAN,
last_login DATE
);

INSERT INTO student (roll, student_name, age, department, score, student_status, last_login) VALUES
(101, 'Alice Rahman', 20, 'CSE', 85, TRUE, '2025-05-10'),
(102, 'Babu Islam', 21, 'EEE', 78, TRUE, '2025-05-12'),
(103, 'Chayana Akter', 22, 'BBA', 90, TRUE, '2025-05-11'),
(104, 'Dolon Ahmed', 23, 'CSE', 65, FALSE, '2025-05-09'),
(105, 'Elma Khatun', 20, 'EEE', 72, TRUE, '2025-05-15'),
(106, 'Fahim Hossain', 24, 'CSE', 95, TRUE, '2025-05-14'),
(107, 'Gias Uddin', 22, 'BBA', 81, TRUE, '2025-05-13'),
(108, 'Hasan Mahmud', 21, 'CSE', 69, FALSE, '2025-05-08'),
(109, 'Ishrat Jahan', 20, 'EEE', 88, TRUE, '2025-05-12'),
(110, 'Jibon Mia', 23, 'CSE', 76, TRUE, '2025-05-10'),
(111, 'Khadija Noor', 22, 'BBA', 82, TRUE, '2025-05-11'),
(112, 'Liton Ali', 21, 'CSE', 79, TRUE, '2025-05-12'),
(113, 'Mim Akter', 20, 'EEE', 93, TRUE, '2025-05-13'),
(114, 'Naimur Rahman', 24, 'CSE', 68, FALSE, '2025-05-14'),
(115, 'Oliur Rahman', 22, 'BBA', 84, TRUE, '2025-05-15'),
(116, 'Papia Sultana', 23, 'CSE', 91, TRUE, '2025-05-10'),
(117, 'Quazi Hasan', 21, 'EEE', 74, TRUE, '2025-05-11'),
(118, 'Rima Begum', 20, 'CSE', 66, FALSE, '2025-05-12'),
(119, 'Sharif Uddin', 22, 'BBA', 87, TRUE, '2025-05-13'),
(120, 'Tanvir Hasan', 23, 'CSE', 92, TRUE, '2025-05-14');


--Table Alteration Tasks (Based on 8-1 to 8-3)
SELECT * FROM student;
--Add a column email (VARCHAR) to the existing students table.--
ALTER TABLE student
ADD COLUMN student_email VARCHAR(50) ;
ALTER TABLE student
DROP COLUMN student_email ;
---Rename the column email to student_email.
ALTER Table student RENAME COLUMN email to student_email;
---Add a UNIQUE constraint to student_email.
alter TABLE  student
ADD CONSTRAINT unique_student_student_email UNIQUE(student_email);
SELECT * from student


--- Add a PRIMARY KEY to a new table named courses.
CREATE Table courses (
    course_id SERIAL PRIMARY KEY
    course_name VARCHAR(100)
)

ALTER Table student
ADD constraint   unique_courses UNIQUE(courses);

alter Table student
ADD constraint student_pkey;

ALTER Table student
ADD constraint student_courses_pk PRIMARY key(courses);
alter Table student
drop constraint student_pk_courses_pkey 


---Filtering & Logical Operations (Based on 8-5, 8-7, 8-8)
-- Write a query to find all students who have a score greater than 80 and not null.
SELECT * FROM student
where score >=80 not NULL;
--Use the NOT operator to exclude students from a specific department.
SELECT * FROM student
where NOT department = 'BBA' ;
--Fetch students whose names start with ‘A’ using LIKE and ILIKE.
SELECT * FROM student
WHERE student_name LIKE('A%')

SELECT * FROM student
WHERE student_name ILIKE('a%');

---Select all students whose age is between 18 and 25.
SELECT * FROM student
WHERE age BETWEEN 18 AND 25;
--Retrieve rows using IN for a specific set of roll numbers.

SELECT * FROM student
WHERE roll  in(101,102,103)

SELECT * FROM student
WHERE roll NOT in(101,102,103)

---Aggregate Functions (Based on 8-6)
---Count how many students exist in the students table.
SELECT  count(*)FROM student;

--Find the average score of students in a specific department.
SELECT avg(score)from student;

--Get the maximum and minimum age of all students.
SELECT max(age)FROM student;
SELECT min(age)FROM student;

-- Update & Delete Operations (Based on 8-9, 8-10)

-- Update the status of students who scored less than 80 to 'failed'.
SELECT * FROM student

UPDATE student 
set student_status='failed'
WHERE score <80;


-- delete
DELETE FROM  student
WHERE department= 'EEE' AND score <90

SELECT * FROM student

SELECT count(*)from student;

--Use LIMIT and OFFSET to fetch the second page of results (5 per page).

SELECT * FROM student LIMIT 5 OFFSET 5*0;
SELECT * FROM student LIMIT 5 OFFSET 5*1;
SELECT * FROM student LIMIT 5 OFFSET 5*2;



-- type change
alter TABLE student
alter COLUMN student_status type varchar(50)
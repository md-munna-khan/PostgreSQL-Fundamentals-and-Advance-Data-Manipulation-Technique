CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    age INT  ,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(50),
    country VARCHAR(50)
);
INSERT INTO students (
    first_name, last_name, age, grade, course, email, dob, blood_group, country
) VALUES
('Ali', 'Khan', 20, 'A', 'Mathematics', 'ali.khan1@example.com', '2005-02-15', 'A+', 'Bangladesh'),
('Sara', 'Ahmed', 21, 'B', 'Physics', NULL, '2004-03-20', 'B+', 'Bangladesh'),
('Nabil', 'Hasan', 22, 'A', 'Biology', 'nabil.hasan3@example.com', '2003-05-10', 'O+', 'India'),
('Rita', 'Roy', 19, 'A+', 'Chemistry', NULL, '2006-07-18', 'A-', 'Nepal'),
('Jamal', 'Uddin', 23, 'B+', 'English', 'jamal.uddin5@example.com', '2002-01-25', 'B-', 'Bangladesh'),
('Mira', 'Sultana', 18, 'A', 'Computer Science', 'mira.sultana6@example.com', '2007-10-30', 'O+', 'Pakistan'),
('Fahim', 'Rahman', 20, 'A-', 'Math', 'fahim.rahman7@example.com', '2005-12-12', 'AB+', 'Bangladesh'),
('Tania', 'Begum', 21, 'B', 'Statistics', 'tania.begum8@example.com', '2004-09-09', 'A+', 'India'),
('Rakib', 'Islam', 19, 'B', 'Physics', NULL, '2006-11-22', 'B+', 'Nepal'),
('Shila', 'Das', 20, 'A+', 'Zoology', 'shila.das10@example.com', '2005-08-03', 'O-', 'Bangladesh'),
('Hasan', 'Ali', 22, 'B-', 'Philosophy', 'hasan.ali11@example.com', '2003-06-14', 'A+', 'India'),
('Nusrat', 'Jahan', 20, 'A', 'Geography', 'nusrat.jahan12@example.com', '2005-04-07', 'B+', 'Bangladesh'),
('Tanvir', 'Hossain', 21, 'B+', 'Math', 'tanvir.hossain13@example.com', '2004-07-29', 'O+', 'Bangladesh'),
('Sadia', 'Khatun', 20, 'B', 'Physics', 'sadia.khatun14@example.com', '2005-02-10', 'A-', 'Nepal'),
('Rafi', 'Ahmed', 23, 'A-', 'Chemistry', 'rafi.ahmed15@example.com', '2002-11-19', 'AB+', 'Bangladesh'),
('Mahi', 'Rana', 19, 'B', 'Computer Science', 'mahi.rana16@example.com', '2006-03-13', 'O+', 'India'),
('Jui', 'Akter', 18, 'A+', 'Statistics', 'jui.akter17@example.com', '2007-01-01', 'A-', 'Pakistan'),
('Reza', 'Karim', 21, 'B+', 'Zoology', 'reza.karim18@example.com', '2004-06-16', 'B-', 'Bangladesh'),
('Sajid', 'Ullah', 20, 'A', 'Math', NULL, '2005-05-23', 'O+', 'Bangladesh'),
('Nila', 'Parvin', 22, 'A+', 'English', 'nila.parvin20@example.com', '2003-12-08', 'A+', 'Nepal');



SELECT * FROM students;
TRUNCATE students

SELECT email as "Student Email",age as "Student Age" FROM students;

SELECT DISTINCT   blood_group  FROM students;
-- select students from india
SELECT * FROM students
WHERE country='India';
-- select students with B grade in physics
SELECT * FROM students
WHERE grade='B' AND course = 'Physics';

-- select student from nepal or india
SELECT * FROM students
WHERE country='Nepal' OR country='India';
-- select student from nepal or india and age 22
SELECT * FROM students
WHERE( country='Nepal' OR country='India') AND age=22;
-- select student from   != Nepal
SELECT * FROM students
WHERE country != 'Nepal';
SELECT * FROM students
WHERE country <> 'Nepal';
-- scalar function
SELECT length(last_name)FROM students;

-- aggregate function
SELECT count(*) FROM students;
SELECT max(length (first_name)) FROM students;

SELECT * FROM students
WHERE country <> 'Nepal';
SELECT * FROM students
WHERE NOT country = 'India';


-- null always null
SELECT NULL = NULL;
SELECT NULL <> NULL;
SELECT NULL = NULL+1;

SELECT * FROM students
WHERE email IS NULL;

SELECT email FROM students

SELECT COALESCE(email,'Email not Provided')FROM students;

SELECT * FROM students 
WHERE country ='India' OR  country ='Nepal' OR country = 'Pakistan';
-----shortcut or use in
SELECT * FROM students 
WHERE country NOT IN('Nepal','Pakistan');
--- use Between
SELECT * FROM students 
WHERE dob BETWEEN '2001-01-01' and '2004-01-01' ORDER BY dob;
-- use like
SELECT * FROM students 
WHERE first_name LIKE ('_i%')

SELECT * FROM students 
WHERE first_name ILIKE ('a%')

--- limit---
SELECT * FROM students LIMIT 10 OFFSET 2;
--- offset first 2 id cancel 
SELECT * FROM students LIMIT 10 OFFSET 2;
---- pagination----------
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;

----- Delete ----------
SELECT * FROM students WHERE grade='B-';

DELETE from students
WHERE grade = 'B-' AND country='Nepal';

--- update rows-------
UPDATE students
set email='defalt@gmail.com', age =30
WHERE student_id=244



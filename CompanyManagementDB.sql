CREATE DATABASE CollegeManagementDB;
USE CollegeManagementDB;
SELECT DATABASE();
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    city VARCHAR(50)
);
SHOW TABLES;
DESC Student;
INSERT INTO Student
(student_id, student_name, age, gender, department, city)
VALUES
(101, 'Aditi', 22, 'Female', 'Computer Science', 'Nagpur'),
(102, 'Rahul', 21, 'Male', 'Mechanical', 'Pune'),
(103, 'Sneha', 23, 'Female', 'Electronics', 'Mumbai'),
(104, 'Aman', 20, 'Male', 'Civil', 'Delhi'),
(105, 'Priya', 22, 'Female', 'Information Technology', 'Hyderabad');
SELECT * FROM Student;
SELECT student_name, department
FROM Student;
SELECT *
FROM Student
WHERE age > 21;
SELECT *
FROM Student
WHERE department='Computer Science'
AND city='Nagpur';
SELECT *
FROM Student
WHERE city='Pune'
OR city='Mumbai';
SELECT *
FROM Student
ORDER BY age;
SELECT *
FROM Student
ORDER BY age DESC;
UPDATE Student
SET city='Bangalore'
WHERE student_id=105;
SELECT * FROM Student;
DELETE FROM Student
WHERE student_id=104;
SELECT * FROM Student;
SELECT COUNT(*) AS Total_Students
FROM Student;
SELECT MAX(age) AS Maximum_Age
FROM Student;
SELECT MIN(age) AS Minimum_Age
FROM Student;SELECT AVG(age) AS Average_Age
FROM Student;
SELECT SUM(age) AS Total_Age
FROM Student;
SELECT *
FROM Student
WHERE student_name LIKE 'A%';
SELECT *
FROM Student
WHERE city IN ('Nagpur', 'Mumbai');
SELECT *
FROM Student
WHERE age BETWEEN 21 AND 23;
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration VARCHAR(20),
    fees INT
);
INSERT INTO Course
VALUES
(1, 'Java Full Stack', '6 Months', 35000),
(2, 'Python', '4 Months', 25000),
(3, 'MySQL', '2 Months', 15000),
(4, 'Data Structures', '3 Months', 20000);
SELECT * FROM Course;
UPDATE Course
SET fees = 30000
WHERE course_id = 2;
DELETE FROM Course
WHERE course_id = 4;

USE CollegeManagementDB;
CREATE TABLE Employee
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);
CREATE TABLE Project
(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT,
    budget DECIMAL(10,2),
    FOREIGN KEY(emp_id)
    REFERENCES Employee(emp_id)
);
INSERT INTO Employee VALUES
(101,'Aditi','IT',60000,'Nagpur'),
(102,'Rahul','HR',45000,'Pune'),
(103,'Sneha','Finance',70000,'Mumbai'),
(104,'Aman','IT',65000,'Delhi'),
(105,'Priya','Marketing',55000,'Hyderabad');

INSERT INTO Project VALUES
(1,'Library Management',101,500000),
(2,'Payroll System',102,300000),
(3,'Banking App',103,900000),
(4,'E-Commerce Website',104,800000),
(5,'CRM Software',101,600000);

SELECT
e.emp_name,
e.department,
p.project_name,
p.budget
FROM Employee e
INNER JOIN Project p
ON e.emp_id=p.emp_id;

SELECT
e.emp_name,
p.project_name
FROM Employee e
LEFT JOIN Project p
ON e.emp_id=p.emp_id;

SELECT
e.emp_name,
p.project_name
FROM Employee e
RIGHT JOIN Project p
ON e.emp_id=p.emp_id;

SELECT
department,
COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY department;

SELECT
department,
AVG(salary) AS AverageSalary
FROM Employee
GROUP BY department
HAVING AVG(salary)>50000;

SELECT *
FROM Employee
WHERE salary>
(
SELECT AVG(salary)
FROM Employee
);

SELECT *
FROM Employee e
WHERE EXISTS
(
SELECT *
FROM Project p
WHERE p.emp_id=e.emp_id
);

SELECT *
FROM Employee
WHERE salary>ANY
(
SELECT salary
FROM Employee
WHERE department='HR'
);

SELECT *
FROM Employee
WHERE salary>ALL
(
SELECT salary
FROM Employee
WHERE department='HR'
);

CREATE VIEW EmployeeDetails AS

SELECT
emp_name,
department,
salary

FROM Employee;
SELECT * FROM EmployeeDetails;

CREATE INDEX idx_department
ON Employee(department);

DELIMITER //

CREATE PROCEDURE GetEmployee()

BEGIN

SELECT * FROM Employee;

END//

DELIMITER ;
CALL GetEmployee();

START TRANSACTION;

UPDATE Employee
SET salary=salary+5000
WHERE emp_id=101;

COMMIT;
START TRANSACTION;

UPDATE Employee
SET salary=salary-5000
WHERE emp_id=101;

ROLLBACK;

SELECT MAX(salary) FROM Employee;

SELECT MIN(salary) FROM Employee;

SELECT AVG(salary) FROM Employee;

SELECT SUM(salary) FROM Employee;

SELECT COUNT(*) FROM Employee;

SELECT *
FROM Employee
ORDER BY salary DESC;

SELECT *
FROM Employee
WHERE emp_name LIKE 'A%';

SELECT *
FROM Employee
WHERE salary BETWEEN 50000 AND 70000;

SELECT *
FROM Employee
WHERE city IN('Nagpur','Mumbai');


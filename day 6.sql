CREATE DATABASE employeesDB;
USE employeesDB;

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE
);
drop table employees;
-- Insert sample data
INSERT INTO employees (emp_id,first_name, last_name,hire_date) VALUES
(1,'madan', 'lal','2024-06-15'),
(2,'MOHANA', 'PRIYA','2023-04-15'),
(3,'MEHA', 'LAXMI','2022-04-15'),
(4,'karthik', 'raj','2021-04-15');

SELECT upper(first_name)as first_name_upper,
 upper(last_name)as last_name_upper
from employees;

SELECT lower(first_name)as first_name_lower,
 lower(last_name)as last_name_lower
from employees;

SELECT CONCAT(first_name
last_name)as full_name
from employees;

select substring(first_name, 1,3)as substring_name
from employees;

select emp_id,first_name,last_name,hire_date,
timestampdiff(year,hire_date,now())as tentureyears
 from employees;

select emp_id,
first_name,
last_name,
ROUND(DATEDIFF(NOW(),hire_date)/365,1) as tenture_years from employees;
 
create table student(
student_id int primary key,
frist_name varchar(50),
last_name varchar(50)
);

insert into student values
(101,"selva","raj"),
(102,"karthik","kumar"),
(103,"vani","sri");

select * from student;
DELIMITER //
CREATE FUNCTION getfullname(frist_name varchar(50), last_name varchar(50))
RETURNS varchar(100)
DETERMINISTIC
BEGIN
RETURN CONCAT(frist_name," ",last_name);
END //

select student_id,getfullname(frist_name,last_name) as fullname from student;
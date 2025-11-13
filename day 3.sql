CREATE DATABASE university;
use university;

CREATE TABLE students_data(
student_id INT,
student_name VARCHAR(100),
email_ID VARCHAR(100),
location VARCHAR(100),
department VARCHAR(100),
Gpa DECIMAL(3.2)
); 

 Select*from students_data;
 
insert into students_data values
(101,"rishi","rishi@gmail.com","hosur","chemistry",4.3),
(102,"raj","raj@gmail.com","chennai","physics",3.3),
(103,"selva","selva@gmail.com","dharmapuri","tamil",4.2),
(104,"ramesh","null","vellore","maths",2.3),
(105,"jai","null","hosur","computer science",5.3);

SELECT DISTINCT department from students_data;

select * from students_data WHERE email_ID is null;
select * from students_data WHERE email_ID is not null;

SELECT * FROM students_data where Gpa in (3,4);
SELECT * FROM students_data where Gpa between 3 and 4;
SELECT * FROM students_data where Gpa  not between 2 and 2.5;


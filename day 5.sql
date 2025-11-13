create database college_data;
use  college_data;

create table students(
student_id INT ,	
student_name VARCHAR(100),
age int
);
insert into students (student_id,student_name,age)values
(10001,"vani",19),
(10002,"kani",18),
(10003,"mani",19),
(10004,"pavi",18);
 
 create table course(
 student_id INT,
 course_id INT,
 course_name VARCHAR (50)
 );
 INSERT INTO course(student_id,course_id,course_name)values
 (10001,01,"chemistry"),
 (10002,02,"tamil"),
 (10003,03,"physics"),
 (10004,04,"maths"),
 (10005,05,"english"),
 (10006,06,"geography");
 
 SELECT *from students
 INNER JOIN course
 on students.student_id=course.student_id;
  
 select *from students
 left join course
 on students.student_id=course.student_id;
 
 select *from students
 right join course
 on students.student_id=course.student_id;
 
 CREATE TABLE current_emp(
emp_name VARCHAR(50)
);
 create table past_emp(
 emp_name VARCHAR(50)
 );
 
 INSERT INTO current_emp(emp_name)VALUES
 ("pavi"),
 ("maran");
 
  INSERT INTO past_emp(emp_name)VALUES
  ("kani");
  
  select emp_name from current_emp
  union
  select emp_name from past_emp;
  
  select emp_name from current_emp
  union all
  select emp_name from past_emp;
  
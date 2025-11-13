CREATE DATABASE e_commerce;
use e_commerce;

create table sales(
product_id INT,
product_name VARCHAR (100),
quantity INT,
price INT 
);

create table employee(
employee_id  INT ,
employee_name VARCHAR(100),
department_name VARCHAR(100),
gender enum("M","F"),
salary INT
); 

 INSERT INTO sales(product_id,product_name,quantity,price)VALUES 
(1,"washing machine",5,200000),
(2,"sofa",4,100000),
 (3,"fan",2,3950),
 (4,"tv",20,400000),
 (5,"iphone",2,380000),
 (6,"frige",12,190000);
 
   SELECT*FROM sales;
    SELECT*FROM employee;
  INSERT INTO employee (employee_id,employee_name,department_name,gender,salary)VALUES
  (1001,"kavi","sales","F",43000),
  (1002,"ravi","sales","M",35000),
  (1003,"mohan","sales","M",43000),
  (1004,"pavi","manager","F",60000),
  (1005,"rajesh","sales","M",43000),
  (1006,"ragu","sales","M",43000),
  (1007,"loki","sales","M",43000),
  (1008,"vani","sales","F",43000),
  (1009,"reena","sales","F",43000),
  (1010,"mano","sales","M",43000),
  (1011,"aishu","sales","F",43000);
  INSERT INTO employee (employee_id,employee_name,department_name,gender,salary)VALUES
  (1012,"aarnika","sales","F",43000);
  
  SELECT product_name,price 
  FROM sales
  order by price desc
  limit 3;
  select count(*)as total_count from sales;
  select SUM(price)as total_price from sales;
  select avg(price)as avg_price from sales;
  select min(quantity)as min_quantity from sales;
 select max(quantity)as max_quantity from sales;
 
 select department_name,count(*)as total_employees
 from employee
 group by department_name
 having count(*)>10;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
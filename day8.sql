create database sales ; 
use sales;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_name varchar(50),
    order_date DATE,
    amount DECIMAL(10,2)    
);

INSERT INTO Orders (order_id, customer_name, order_date, amount)
VALUES
(1,'brown', '2025-10-01', 1500.00),
(2,'david', '2025-10-05', 2000.00),
(3,'christy', '2025-10-10', 750.50);


CREATE TABLE Order_History (
    order_id INT,
    customer_name varchar(50),
    order_date DATE,
    amount DECIMAL(10,2),
    deleted_time TIMESTAMP
);

DELIMITER $$

CREATE TRIGGER after_order_delete
AFTER DELETE ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History (order_id, customer_name, order_date, amount)
    VALUES (OLD.order_id, OLD.customer_name, OLD.order_date, OLD.amount);
END$$

DELIMITER ;

select * from Orders;
select * from Order_History;
DELETE FROM Orders WHERE order_id = 2;

Select user from mysql.user;

-- Create a user --
Create user 'junioranalysts' @'localhost' identified by '12345';

-- grant access to the db --
Grant select on sales.* to 'junioranalysts' @'localhost' ;

-- what all permissions given--
show grants for 'junioranalysts' @'localhost' ;

-- Revoke access --
revoke select on sales.* from 'junioranalysts' @'localhost' ;


CREATE TABLE Accounts (
    account_no INT PRIMARY KEY,
    holder_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO Accounts VALUES 
(1001, 'John', 20000.00),
(1002, 'Bob', 15000.00);

start transaction;
update Accounts set balance = balance + 5000 where account_no = 1001;
savepoint balance_credit;
update Accounts set balance = balance - 3000 where account_no = 1002;
savepoint balance_debit;

select account_no, balance from Accounts;

rollback;
rollback to balance_credit;

commit;
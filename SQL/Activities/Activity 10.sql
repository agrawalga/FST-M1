REM   Script: Activity 10
REM   Activity 10

CREATE TABLE Salesman;

CREATE TABLE Salesman( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int);

Describe Salesman


INSERT ALL 
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15) 
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13) 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

Select * from Salesman;

Select salesman_id, salesman_city from Salesman;

Select * from Salesman where salesman_city='Paris';

SELECT salesman_id, commission FROM Salesman WHERE salesman_name='Paul Adam';

Alter Table Salesman 
Add Grade int;

Update table Salesman 
set Grade=100;

Update table Salesman 
set Grade=100;

Update Salesman 
set Grade=100;

Select * from Salesman;

Update Salesman  
set Grade=200 where salesman_city='Rome';

Update Salesman  
set Grade=300 where salesman_name='James Hoog';

Update Salesman  
set salesman_name='Pierre' where salesman_name='McLyon';

Select * from Salesman;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

Insert ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

Select * from orders;

Select sum(purchase_amount) as "Total" from orders;

Select avg(purchase_amount) as "Average" from orders;

Select MAX(purchase_amount) as "Maximum" from orders;

Select MIN(purchase_amount) as "Minimum" from orders;

Select count(distinct salesman_id) as "Total Count" from orders;

Select * from orders;

Select customer_id, max(purchase_amount) from orders group by customer_id;

elect salesman_id, order_date, max(purchase_amount) from orders  


where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id, order_date;


Select salesman_id, order_date, max(purchase_amount) from orders  
where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id;

Select salesman_id, order_date, max(purchase_amount) from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id, order_date;

Select customer_id, order_date, MAX(purchase_amount) from orders 
group by customer_id, order_date 
having MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

INSERT ALL  
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15)  
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13)  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11)  
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14)  
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)  
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)  
SELECT 1 FROM DUAL;

CREATE TABLE Salesman(  
    salesman_id int,  
    salesman_name varchar2(20),  
    salesman_city varchar2(20),  
    commission int);

CREATE TABLE Salesman(  
    salesman_id int,  
    salesman_name varchar2(20),  
    salesman_city varchar2(20),  
    commission int);

INSERT ALL  
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15)  
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13)  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11)  
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14)  
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)  
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)  
SELECT 1 FROM DUAL;

Select salesman_name, customer_name from customers, salesman where Salesman.salesman_id=Customers.customer_id;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

Create table Salesman(  
    salesman_id int,  
    salesman_name varchar2(20),  
    salesman_city varchar2(20),  
    commission int);

Create table Salesman(  
    salesman_id int,  
    salesman_name varchar2(20), 
    salesman_city varchar2(20),  
    commission int);

INSERT ALL  
    INTO salesman VALUES(5001, 'James Hoog', 'New York', 15)  
    INTO salesman VALUES(5002, 'Nail Knite', 'Paris', 13)  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11)  
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14)  
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13)  
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12)  
SELECT 1 FROM DUAL;

Create table Salesman(  
    salesman_id int,  
    salesman_name varchar2(20), 
    salesman_city varchar2(20),  
    commission int);

Create table Salesman(  
    salesman_id int,  
    salesman_name varchar2(20), 
    salesman_city varchar2(20),  
    commission int);

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

SELECT a.customer_name AS "Customer Name", a.customer_city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

Select a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
Inner Join salesman b ON a.salesman_id=b.salesman_id;

Select a.customer_name, a.city, a.grade, b.salesman_name AS "Salesman", b.city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

Select a.customer_name, a.city, a.grade, b.salesman_name AS "Salesman", a.city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

Select a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

Select * from orders where salesman_id=3007;

Select * from orders where salesman_id='3007';

Select * from orders where Salesman_id=(Select distinct(Salesman_id) from orders where customer_id=3007);

SelectT * from orders 


where salesman_id IN (Select salesman_id from salesman where city='New York');


SelectT * from orders where salesman_id IN (Select salesman_id from salesman where city='New York');


Select * from orders where salesman_id IN (Select salesman_id from salesman where city='New York');

Select * from orders where salesman_id IN (Select salesman_id from customers where city='New York');

Select * from orders where salesman_id IN (Select salesman_id from customers where city='New York');

Select * from orders where Salesman_id=(Select distinct(Salesman_id) from orders where customer_id=3007);

Select * from orders where salesman_id IN (Select salesman_id from customers where city='New York');

Select grade, count(*) from customers 
group by grade having by grade>(Select AVG(grade) from customers where city='New York');

Select grade, count(*) from customers 
group by grade having by Grade>(Select AVG(Grade) from customers where city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));


REM   Script: Activity 8
REM   Activity 8

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


REM   Script: Activity 5
REM   Activity 5

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


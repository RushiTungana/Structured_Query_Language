CREATE DATABASE cg_hyd_jfs_058;
use cg_hyd_jfs_058;
CREATE TABLE Employee(empid int,emp_firstname VARCHAR(20),emp_lastname VARCHAR(20),date_of_joining DATE);

SELECT* FROM Employee;
drop TABLE Employee;

CREATE TABLE employee(empid int,emp_firstname VARCHAR(20),emp_lastname VARCHAR(20),date_of_joining DATE);
SELECT* FROM employee;
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(108,'Rudra','kesav','2026-09-27');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(109,'Hemanth','kuppili','2026-08-27');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(110,'Sujay','thamana','2026-09-25');
INSERT into employee(empid ,emp_firstname,emp_lastname ,date_of_joining) VALUES(111,'adhi','kesava','2026-09-29');
INSERT into employee(emp_firstname,emp_lastname ) VALUES('Uday','Tungana');




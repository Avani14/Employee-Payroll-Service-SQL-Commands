create database employee_payroll_service;
show databases;
use employee_payroll_service;
create table employee_payroll(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50), 
    salary INT,
    start_date DATE NOT NULL);
    
insert into employee_payroll(name,salary,start_date) values("Jane",1000,"2022-04-19");
insert into employee_payroll(name,salary,start_date) values("Eddie",3000,"2021-11-21");

select * from employee_payroll;

SELECT * FROM employee_payroll where name = "Bill";
SELECT * FROM employee_payroll where start_date BETWEEN CAST("2011-04-01" AS DATE) AND DATE(NOW());

ALTER TABLE employee_payroll add column gender varchar(1);
UPDATE employee_payroll set gender = "M"
		where id = 4;
        
SELECT SUM(salary) from employee_payroll where gender = "F" group by gender;
SELECT AVG(salary) from employee_payroll where gender = "F" group by gender;
SELECT MIN(salary) from employee_payroll where gender = "F" group by gender;
SELECT MAX(salary) from employee_payroll where gender = "F" group by gender;
SELECT COUNT(salary) from employee_payroll where gender = "F" group by gender;

ALTER TABLE employee_payroll add column department varchar(10);
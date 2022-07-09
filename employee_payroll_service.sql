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

ALTER TABLE employee_payroll add column Basic_Pay int, add column
Deductions int,add column Taxable_Pay int,add column
Income_Tax int,add column Net_Pay int;

insert into employee_payroll(name,salary,start_date,gender,phone,address,department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay) values("Terrisa",3000,"2021-11-21",'F',98765432,"Indore",'Sales',3000,100,1000,200,1700);
insert into employee_payroll(name,salary,start_date,gender,phone,address,department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay) values("Terrisa",3000,"2021-11-21",'F',98765432,"Indore",'Marketing',3000,100,1000,200,1700);

SELECT * FROM employee_payroll WHERE NAME = "Avani";

create table employee_pay(emp_id int,Basic_Pay int,
Deductions int,Taxable_Pay int,
Income_Tax int,Net_Pay int);

create table employee_details(emp_id int,name varchar(50),emp_gender char(1),emp_phone long,emp_address varchar(50));
create table employee_department_details(emp_id int, emp_salar int,emp_department varchar(50));
alter table employee_department_details add column emp_start_date date;
insert into employee_details values(1,"Avani",'F',9516944147,'Indore');
select * from employee_pay;

alter table employee_department_details modify column emp_id int primary key auto_increment;
desc employee_payroll;
insert into employee_department_details values(1,5000,"FullStack","2021-04-19");
insert into employee_pay values(1,5000,100,100,200,4600)
;
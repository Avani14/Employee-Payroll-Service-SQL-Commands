-- Created the Databse UC1 --
create database employee_payroll_service;
show databases;
use employee_payroll_service;
create table employee_payroll(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50), 
    salary INT,
    start_date DATE NOT NULL);
    
insert into employee_payroll(name,salary,start_date) values("Avani",5000,"2021-04-19");

--uc1
create database Employee_payroll
use Employee_payroll
create table EmployeeTable
(
--UC2//
 Id int primary key identity,--primary key is not null and identity is used to increment the recored one by one.
							--alter table EmployeeTable add primary key(id).if not mentioned primary at the time of starting.
 Name varchar (50),
 Age int Not null,
 Salary decimal (18,2) default 1000,
 joinedDate datetime2(3) default GetDate(),-- getdate -> tilldate command
 )



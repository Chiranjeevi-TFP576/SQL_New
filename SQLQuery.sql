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
 --UC3//
 insert into EmployeeTable values ('Chiranjeevi',25,22000,'2020-01-02')
 insert into EmployeeTable values ('Ram',28,25000,'2021-05-02')
 insert into EmployeeTable values ('Suresh',27,30000,'2022-02-16')
 --UC4//
 select *from EmployeeTable

 --UC5//where -> to filter the records
 select *from EmployeeTable where Age=25
 update EmployeeTable set Name= 'Reventh' where id = 2
 update EmployeeTable set Age = 24 where id =2
 -- for changing any header in table ,select name as 'Employee Name' from EmployeeTable
 select * from EmployeeTable
 select *from EmployeeTable where joinedDate between '2021-01-02'and Getdate()

  --UC6 Add Gender
 alter table EmployeeTable add Gender char(1)
 update EmployeeTable set Gender='M' where Id in (1,2,3,4)
 update EmployeeTable set Gender='F' where Id in (2)

 --UC7 average
 select * from EmployeeTable
 select Name,sum(salary) from EmployeeTable where id=1 or id=2 group by Name
 select gender,Min(salary) from EmployeeTable  Group by gender
 select gender,Avg(salary) from EmployeeTable  Group by gender
 --UC8 
  select * from EmployeeTable

 alter table EmployeeTable add 
 Employee_Phone varchar (15),
 Address varchar(300) not null default 'India',
 Department varchar(50) not null default 'Defence';
 --Change Department as BasePay
 exec sp_rename 'EmployeeTable.Department','Basic_Pay'

  --UC9//
 select * from EmployeeTable

 alter table EmployeeTable add
 Detuction money,
 Taxable_Pay money,
 Income_Tax money,
 Net_Pay money;

 --UC10
 insert into EmployeeTable values ('Chiranjeevi',25,22000,'2020-01-02','M',NULL,'India','IT_Department',NULL,NULL,NULL,NULL)
 delete from EmployeeTable where id=6
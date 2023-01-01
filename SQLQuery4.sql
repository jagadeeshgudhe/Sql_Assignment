-- 1) Creating Database Employee
create database Employee

-- 2) Creating table for Employee_Details
create table Employee_Details
(
	Emp_id Integer,
	Emp_name varchar(20),
	Job_name varchar(20),
	Manager_id Integer,
	Hire_date date,
	salary Integer,
	Dept_id Integer,

	primary key(Emp_id)
);

-- 3) Inserting values into Table
insert into Employee_Details values(68319,'Mr.Singh','President',68319,'1991-11-18',6000,1001);
insert into Employee_Details values(68320,'Mr.sharma','Vice president',68310,'1991-12-18',5900,1101);
insert into Employee_Details values(68321,'Mr.Rajesh','Chairman',68311,'1990-11-18',6500,1201);
insert into Employee_Details values(68322,'Mr.Abhi','Vice Chairman',68312,'1991-01-28',6400,1301);
insert into Employee_Details values(68323,'Mr.Naveen','Principal',68313,'1993-10-18',5700,1401);
insert into Employee_Details values(68324,'Mr.Nitish','professor',68314,'1994-12-28',5300,1501);
insert into Employee_Details values(68325,'Mr.Gudhe','HOD',68315,'1994-12-26',5500,1601);
insert into Employee_Details values(68326,'Mr.Mahesh','Clerk',68316,'1995-05-14',3000,1701);
insert into Employee_Details values(68327,'Mr.Charan','Chief warden',68317,'1995-04-18',4000,1801);
insert into Employee_Details values(68328,'Mr.Suresh','Lab assistant',68318,'1996-09-14',3500,1901);
insert into Employee_Details values(68428,'Mr.Suresh','Lab assistant',68418,'1996-10-14',3500,1991);

-- printing all values in the table
select * from Employee_Details;

-- 4) printing Emp_name and salary
select Emp_name,salary from Employee_Details;

-- 5) print unique job_names in table
select distinct(job_name) from Employee_Details;
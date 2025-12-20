--? Subquery -> A subquery is a query inside () that provides data to an outer query.

-- create table employees
create table employees(
	id serial primary key,
	name varchar(50),
	department varchar(50),
	salary int
);

-- insert data into employees
insert into employees (name, department, salary) values
	('Alice Johnson', 'HR', 45000),
	('Bob Smith', 'IT', 65000),
	('Charlie Brown', 'Finance', 72000),
	('Diana Prince', 'Marketing', 58000),
	('Ethan Hunt', 'Operations', 62000),
	('Fiona Davis', 'HR', 48000),
	('George Miller', 'IT', 70000),
	('Hannah Lee', 'Finance', 76000),
	('Ivan Petrov', 'Marketing', 54000),
	('Julia Roberts', 'Operations', 60000);


-- 1. Find the highest salary
select max(salary) as highest_salary from employees;

-- 2. Find which employee gets the highest salary
select * from employees where salary = (select max(salary) from employees);

-- 3. Name of the employee who gets the highest salary in HR department
select name from employees where salary = (select max(salary) from employees where department = 'HR');

-- 4. Find the highest salary
select max(salary) as highest_salary from employees;
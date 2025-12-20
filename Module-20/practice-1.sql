-- create table departments
create table departments(
	department_id serial primary key,
	department_name varchar(50)
);

-- insert data into departments
insert into departments(department_name)
values
	('HR'),
	('Marketing'),
	('Finance'),
	('IT'),
	('Sales'),
	('Engineering'),
	('Customer Support'),
	('Adminstration'),
	('Research'),
	('Quality Assurance');

-- create table employees
create table employees(
	employee_id serial primary key,
	employee_name varchar(50),
	department_id int references departments(department_id),
	salary decimal(10, 2),
	hire_date date
);

-- insert data into employees
insert into employees (employee_name, department_id, salary, hire_date)
values
	('Rahim Uddin', 1, 45000.00, '2020-01-15'),
	('Karim Ahmed', 2, 52000.00, '2019-03-10'),
	('Sara Khan', 3, 60000.00, '2021-06-25'),
	('John Smith', 4, 75000.00, '2018-11-05'),
	('Emma Brown', 5, 68000.00, '2020-09-14'),
	('Ayaan Ali', 6, 48000.00, '2022-02-20'),
	('Lina Rahman', 7, 55000.00, '2021-12-01'),
	('Mark Taylor', 8, 82000.00, '2017-07-18'),
	('Sophia Lee', 9, 70000.00, '2019-05-30'),
	('Daniel Martinez', 10, 62000.00, '2020-08-22'),

	('Anik Hasan', 1, 47000.00, '2021-03-12'),
	('Nusrat Jahan', 2, 54000.00, '2020-07-22'),
	('Ayesha Malik', 3, 62000.00, '2020-02-14'),
	('Michael Johnson', 4, 78000.00, '2017-04-19'),
	('Olivia Green', 5, 70000.00, '2019-01-11'),
	('Zara Hussain', 6, 50000.00, '2021-05-27'),
	('Tahmid Islam', 7, 57000.00, '2020-06-16'),
	('Chris Evans', 8, 85000.00, '2016-03-21'),
	('Daniel Kim', 9, 73000.00, '2020-08-14'),
	('Carlos Gomez', 10, 65000.00, '2019-12-10'),

	('Fahim Noor', 1, 49000.00, '2022-06-18'),
	('Imran Hossain', 2, 56000.00, '2021-10-05'),
	('Omar Farooq', 3, 65000.00, '2019-09-30'),
	('Robert Wilson', 4, 80000.00, '2016-08-23'),
	('Noah White', 5, 72000.00, '2021-12-03'),
	('Arif Khan', 6, 52000.00, '2020-10-09'),
	('Sadia Akter', 7, 59000.00, '2019-02-28'),
	('Paul Anderson', 8, 88000.00, '2015-11-02'),
	('Hannah Park', 9, 76000.00, '2021-04-07'),
	('Maria Fernandez', 10, 68000.00, '2021-09-01'),

	('Rafiq Islam', 1, 51000.00, '2019-07-08'),
	('Shahid Rahman', 2, 58000.00, '2018-05-16'),
	('Nabila Chowdhury', 3, 67000.00, '2022-01-10'),
	('Steven Clark', 4, 83000.00, '2015-02-27'),
	('Isabella Moore', 5, 74000.00, '2018-10-19'),
	('Farhan Aziz', 6, 54000.00, '2021-11-11'),
	('Muntasir Ahmed', 7, 61000.00, '2022-03-03'),
	('Jason Miller', 8, 90000.00, '2014-06-30'),
	('Kevin Wong', 9, 78000.00, '2018-12-12'),
	('Luis Herrera', 10, 71000.00, '2022-05-05');

-- 1. inner join to retrive employee & department information
select
	d.department_id,
	department_name,
	employee_id,
	employee_name
from
	departments as d
	join employees as e using(department_id);

-- 2. Show department name with average salary
select
	department_name,
	round(avg(salary), 2) as average_salary
from
	departments
	join employees using (department_id)
group by
	department_name;

-- 3. Count employees in each departments
select department_name, count(*) as employee from departments join employees using(department_id) group by department_name;

-- 4. Find the department name with the highest average salary
select
	department_name,
	round(avg(salary)) as avg_salary
from
	employees
	join departments using (department_id)
group by
	department_name
order by
	avg_salary desc
limit
	1;

-- 5. Count employees hired each year
select
	extract(
		year
		from
		hire_date
	) as hired_year,
	count(*) as count_employee
from
	employees as e
group by
	extract(
		year
		from
		hire_date
	);
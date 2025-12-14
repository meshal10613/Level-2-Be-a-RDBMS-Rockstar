-- Alter

-- Create a table
create table employe(
	id serial,
	name varchar(100),
	age int
);

-- Renaming a table
alter table employe
rename to employee;

-- Add a column
alter table employee
add column email varchar(50);

-- Drop a column
alter table employee
drop column email;

-- Renaming a column
alter table employee
rename column name to user_name;

-- Modifying Constraints
alter table employee
alter column user_name type varchar(50);

-- Add Constraint
alter table employee
alter column email set not null;

-- Drop Constraint
alter table employee
alter column email drop not null;
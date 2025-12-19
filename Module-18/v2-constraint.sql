-- Set default value
insert into employee(user_name, age) values('John', 25);

-- Add default
alter table employee
alter column email set default 'test@mail.com';

-- Remove default
alter table employee
alter column email drop default;

-- Add constraint (table level)
alter table employee
	add constraint unique_employee_email unique(email);

alter table employee
	add constraint pk_employee_id primary key(id);

-- Drop constraint (table level)
alter table employee
	drop constraint unique_employee_email;
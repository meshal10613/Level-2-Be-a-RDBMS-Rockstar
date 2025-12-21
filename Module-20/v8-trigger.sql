--? Trigger
-- create table
create table employee_logs(
	id serial primary key,
	emp_name varchar(100),
	action varchar(25),
	action_time timestamp def
);

-- create function
create function
	log_employee_deletion () returns trigger language plpgsql as $$
	begin
		insert into employee_logs(emp_name, action) values(old.name, 'delete');
		return old;
	end;
$$;

-- create trigger
create trigger
	save_employee_delete_logs
after
	delete on employees for each row
execute
	function log_employee_deletion ();


-- now when anyone delete any row of employees table it will insert into employee_logs
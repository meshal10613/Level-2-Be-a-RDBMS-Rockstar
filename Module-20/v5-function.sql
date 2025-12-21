--? function

-- return employee count
create function
	emp_count () returns int language sql as $$
	select count(*) from employee
$$

select emp_count() as employee_count;


-- delete employee by id
create function delete_employee_by_id(emp_id int)
returns void
language sql
as $$
	delete from employees
	where employee_id = emp_id;
$$;

select delete_employee_by_id(40);
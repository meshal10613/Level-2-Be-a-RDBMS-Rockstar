--? Procedure

-- delete employee by id
create procedure
	delete_emp_by_id (id int) language plpgsql as $$
begin
	delete from employees where employee_id = id;
end;
$$;


call
	delete_emp_by_id (39);


-- increase low salary by department name
create procedure
	increase_low_salary (department_name varchar(50)) language plpgsql as $$
	declare
	avg_salary int;
	begin
		-- firse step
		select round(avg(salary), 2) into avg_salary from employees 
			where department = department_name;

		-- second step
		update employees set salary = salary * 1.1
		where department = department_name and salary < avg_salary;
	end;
$$;

call increase_low_salary('HR');
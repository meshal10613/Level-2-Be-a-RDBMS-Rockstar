insert into students(first_name, last_name, age, grade, course, dob, blood_group, country)
values ('Saidur', 'Rupom', 20, 'A', 'Computer Science', '2005-01-01', 'B+', 'Bangladesh')


-- select the student whose email is null
select * from students where email is null;

-- select the student whose email is not null
select * from students where email is not null;

-- coalesce function always return the first not null value
select coalesce(null, 2, null, 3) -- return 2

-- if any of the email value is null then their it's return 'not provided'
select coalesce(email, 'not provided') as email from students;
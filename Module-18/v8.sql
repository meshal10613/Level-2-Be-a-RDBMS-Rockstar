--? not

-- select students who are not from 'Bangladesh'
select * from students where not country = 'Bangladesh';

-- select students whose grade is not 'A'
select * from students where not grade = 'A';


--? Scalar Functions
-- upper, lower, concat, length

-- upper
select upper(first_name) from students

-- lower
select lower(first_name) from students

-- concat
select concat(first_name, ' ', last_name) from students

-- length
select length(first_name) from students

--? Aggregate Functions
-- avg, min, max, sum, count
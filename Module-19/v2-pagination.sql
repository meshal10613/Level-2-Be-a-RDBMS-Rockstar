--? Pagination
-- limit, offset
select * from students limit  5 -- give 1 to 5 data

select * from students limit 5 offset 2 --means give remove first 2 data and then give 5 data

--* suppose their are 31 students then (10 students per page) pagination will be
select * from students order by student_id asc limit 10 offset 10 * 0; -- 1 to 10
select * from students order by student_id asc limit 10 offset 10 * 1; -- 11 to 20
select * from students order by student_id asc limit 10 offset 10 * 2; -- 21 to 30
select * from students order by student_id asc limit 10 offset 10 * 3; -- 31 to 40
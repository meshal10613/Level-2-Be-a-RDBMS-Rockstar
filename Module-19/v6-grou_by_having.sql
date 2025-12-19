--? group by having

-- course with more than 1 students
select course, count(*) from students group by course having count(*) > 1;


-- countries with average student age is greater than 21
select country, avg(age) from students group by country having avg(age) > 21;
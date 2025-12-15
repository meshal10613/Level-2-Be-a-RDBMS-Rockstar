-- Distinct
select distinct course from students; -- unique course from students

-- Filtering
select * from students where grade='A+';

-- Select students with 'A' grade in physics
select * from students where course='Computer Science' and grade='A';
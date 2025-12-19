-- Select students with specific blood group A+
select * from students where blood_group='A+';

-- select students from USA or UK
select * from students where country='USA' or country='UK';

-- select students with a grade of 'A' or 'B' in Mathemetics or Physics
select * from students where (grade='A' or grade='B') and (course='Mathematics' or course='Physics');

-- select students from Nepal and age is 20
select * from students where country='Nepal' and age=20;

-- select students from Nepal of Bangladesh and age is 20
select * from students where (country='Nepal' or country='Bangladesh') and age=20;
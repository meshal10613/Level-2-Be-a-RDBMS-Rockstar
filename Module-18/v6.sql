--? Comparison Operator
select * from students where age > 20;

-- select student where country is not Bangladesh
select * from students where country != 'Bangladesh';
select * from students where country <> 'Bangladesh';

-- select students whose age is between 20 & 22
select * from students where age between 20 and 22;

-- select students from Bangladesh, India or Nepal
select * from students where country in ('Bangladesh', 'India', 'Nepal');
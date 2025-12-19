--? Like, ILike

-- select students whose first_name starts with 'A'
select * from students where first_name like 'A%'; -- if last name then %a, like is case sensitive

-- select students whose first_name starts with 'R' and total 5 character
select * from students where first_name like 'R____';

-- select students whose email starts with 'a'
select * from students where first_name ilike 'a%';
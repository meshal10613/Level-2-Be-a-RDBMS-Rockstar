--? Updating Data
update students set email='saidur.rupom@gmail.com' where student_id=31;


-- multiple row update
update students set grade='A+' where student_id in (30, 31) returning *;
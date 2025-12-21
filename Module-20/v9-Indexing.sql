--? Indexing 
EXPLAIN ANALYZE SELECT * FROM students WHERE email = 'syedmohiuddinmeshal24@gmail.com';

create index idx_users_email on users(email);
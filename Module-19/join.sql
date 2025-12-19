create table users(
	id serial primary key,
	username varchar(50)
);

create table posts(
	id serial primary key,
	title varchar(100),
	user_id int references users(id)
);

insert into users(username) values('meshal'), ('rupom'), ('muhib'), ('salam');

insert into posts(title, user_id) values('Hello! Meshal', 1), ('Hello! Rupom', 2), ('Hello! Meshal', 1), ('Hello! Muhib', 3);

--? Inner Join
-- join post & users
select username, title from posts join users on posts.user_id = users.id;


--? Left Join(simple inner join also return primary table or left table things)
select * from users left join posts on users.id = posts.user_id; -- primary table for this query users


--? Right Join(simple inner join also return secondary table or right table things)
select * from users right join posts on users.id = posts.user_id; -- primary table for this query users


--? Full Join(simple inner join also return (primary table or left) & (secondary table or right) table things)
select * from users full join posts on users.id = posts.user_id; -- primary table for this query users
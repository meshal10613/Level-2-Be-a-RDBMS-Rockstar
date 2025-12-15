create table students (
	student_id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	age int,
	grade char(2),
	course varchar(50),
	email varchar(100) unique,
	dob date,
	blood_group varchar(5),
	country VARCHAR(50)
)

INSERT INTO students 
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Rahim', 'Ahmed', 20, 'A+', 'Computer Science', 'rahim.ahmed1@gmail.com', '2005-03-12', 'O+', 'Bangladesh'),
('Karim', 'Hossain', 22, 'A', 'Information Technology', 'karim.hossain2@gmail.com', '2003-07-25', 'A+', 'Bangladesh'),
('Ayesha', 'Rahman', 21, 'B+', 'Software Engineering', 'ayesha.rahman3@gmail.com', '2004-01-18', 'B+', 'Bangladesh'),
('Nusrat', 'Jahan', 19, 'A', 'Computer Science', 'nusrat.jahan4@gmail.com', '2006-05-10', 'AB+', 'Bangladesh'),
('Sakib', 'Hasan', 23, 'B', 'Electrical Engineering', 'sakib.hasan5@gmail.com', '2002-11-03', 'O-', 'Bangladesh'),
('Tamim', 'Iqbal', 24, 'A+', 'Business Administration', 'tamim.iqbal6@gmail.com', '2001-02-20', 'B-', 'Bangladesh'),
('Mim', 'Chowdhury', 20, 'B+', 'Accounting', 'mim.chowdhury7@gmail.com', '2005-08-15', 'A-', 'Bangladesh'),
('Rafi', 'Khan', 22, 'A', 'Mechanical Engineering', 'rafi.khan8@gmail.com', '2003-06-09', 'O+', 'Bangladesh'),
('Sadia', 'Islam', 21, 'A-', 'Economics', 'sadia.islam9@gmail.com', '2004-12-01', 'B+', 'Bangladesh'),
('Fahim', 'Uddin', 19, 'B', 'Physics', 'fahim.uddin10@gmail.com', '2006-04-22', 'AB-', 'Bangladesh'),

('Anika', 'Sultana', 20, 'A+', 'Mathematics', 'anika.sultana11@gmail.com', '2005-09-30', 'O+', 'Bangladesh'),
('Imran', 'Ali', 23, 'B+', 'Civil Engineering', 'imran.ali12@gmail.com', '2002-01-14', 'A+', 'Bangladesh'),
('Farzana', 'Akter', 22, 'A', 'English', 'farzana.akter13@gmail.com', '2003-03-27', 'B-', 'Bangladesh'),
('Mahmud', 'Kabir', 24, 'B', 'Architecture', 'mahmud.kabir14@gmail.com', '2001-10-05', 'O-', 'Bangladesh'),
('Tania', 'Begum', 19, 'A-', 'Biotechnology', 'tania.begum15@gmail.com', '2006-06-11', 'AB+', 'Bangladesh'),
('Shuvo', 'Roy', 21, 'B+', 'Chemistry', 'shuvo.roy16@gmail.com', '2004-02-19', 'A+', 'Bangladesh'),
('Rima', 'Das', 20, 'A', 'Statistics', 'rima.das17@gmail.com', '2005-07-07', 'O+', 'Bangladesh'),
('Nayeem', 'Sheikh', 22, 'A+', 'Data Science', 'nayeem.sheikh18@gmail.com', '2003-09-16', 'B+', 'Bangladesh'),
('Puja', 'Saha', 23, 'B', 'Sociology', 'puja.saha19@gmail.com', '2002-12-29', 'A-', 'Bangladesh'),
('Arif', 'Miah', 21, 'A-', 'Political Science', 'arif.miah20@gmail.com', '2004-04-08', 'O-', 'Bangladesh'),

('Jannat', 'Noor', 20, 'A+', 'Psychology', 'jannat.noor21@gmail.com', '2005-01-23', 'AB-', 'Bangladesh'),
('Hasib', 'Mahmud', 22, 'B+', 'Finance', 'hasib.mahmud22@gmail.com', '2003-05-17', 'O+', 'Bangladesh'),
('Elma', 'Zaman', 19, 'A', 'Marketing', 'elma.zaman23@gmail.com', '2006-08-02', 'B+', 'Bangladesh'),
('Tanvir', 'Arefin', 24, 'B', 'Management', 'tanvir.arefin24@gmail.com', '2001-09-12', 'A+', 'Bangladesh'),
('Sabrina', 'Haider', 21, 'A+', 'Law', 'sabrina.haider25@gmail.com', '2004-11-06', 'O+', 'Bangladesh'),
('Niloy', 'Barua', 23, 'B+', 'Philosophy', 'niloy.barua26@gmail.com', '2002-02-28', 'AB+', 'Bangladesh'),
('Mariya', 'Khatun', 20, 'A', 'Public Health', 'mariya.khatun27@gmail.com', '2005-06-14', 'B-', 'Bangladesh'),
('Adnan', 'Faisal', 22, 'A-', 'Cyber Security', 'adnan.faisal28@gmail.com', '2003-10-21', 'O-', 'Bangladesh'),
('Rashida', 'Parvin', 19, 'B+', 'Environmental Science', 'rashida.parvin29@gmail.com', '2006-03-09', 'A+', 'Bangladesh'),
('Saif', 'Rahman', 24, 'A+', 'Artificial Intelligence', 'saif.rahman30@gmail.com', '2001-07-26', 'AB+', 'Bangladesh');


-- using select
select * from students;
select first_name, age from students;

-- column alias
select first_name as "First Name" from students; -- "" for column

-- sorting
select first_name, blood_group, country, age from students order by age desc; -- desc for descending order
select first_name, blood_group, country, age from students order by age asc; -- asc for ascending order

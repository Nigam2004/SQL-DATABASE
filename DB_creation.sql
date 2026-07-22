CREATE DATABASE collegeDB;
USE collegeDB;
create table students(
 student_id int auto_increment primary key,
 s_name  varchar(20),
 Age int(3),
 Email varchar(50),
 Join_Date Date
);

select * from students;

insert into students (s_name,Age,Email,Join_Date) values ('nigam',20,'nigam@gmail.com',20-02-2025);
insert into students (s_name,Age,Email,Join_Date) values ('ram',22,'ram@gmail.com',22-02-2025);
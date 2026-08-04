-- ONE TO ONE RELATIONSHIP

 --TABLE-1
create table students(stu_id serial primary key,stu_name text);
insert into students(stu_name) values ('rahul'),('nigam'),('suman');
select * from students;

 --TABLE-2
create table stud_profile(stu_id int,address varchar(30),age int,mobil_no varchar(10));
insert into stud_profile(stu_id,address,age,mobil_no) values 
 (1,'polasara',22,'9999999999'),
 (2,'mathura',23,'8888888888'),
 (3,'boirani',24,'6666666666');
select * from stud_profile;

alter table stud_profile add constraint fk_stud_id foreign key(stu_id) references students(stu_id);

-- JOIN TABLE-1&2
select s.stu_name,sp.address,sp.age,sp.mobil_no 
from students s join stud_profile sp on s.stu_id=sp.stu_id;



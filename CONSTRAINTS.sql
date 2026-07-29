 create table stu_data(
 St_roll_no serial  primary key ,
 reg_no int unique,
 stu_name varchar(20) not null,
 mark int default 50 check(mark<=100)
);
insert into stu_data(reg_no,stu_name,mark) values
 (125,'suman',null);

 select * from stu_data;
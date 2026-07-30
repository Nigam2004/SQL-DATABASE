 -- Not Null: it means the field should not be null.
 -- Default: it is used to set the bydefault value to the column if ther is no value.
 -- check(): It check the condition for the filed ,if condition true then it will store the data
 -- unique: it is used to check the uniqueness of the column ,it can allow null value.
 -- primary: It is used to uniquely identify the record from a table.
 -- foreign: Every pimary key can be a foreign key in other table.
 
 --Table-1
 create table stu_data(
 St_roll_no serial  primary key ,
 reg_no int unique,
 stu_name varchar(20) not null,
 mark int default 50 check(mark<=100)
);
insert into stu_data(reg_no,stu_name,mark) values
 (125,'suman',null);

  --Table-2
  create table stu2_data(
 id_ serial  ,
 reg_no int unique,
 stu_name varchar(20) not null,
 mark int default 50 check(mark<=100),
 St_roll_no int, 
 foreign key(St_roll_no) references stu_data(St_roll_no)
);
insert into stu2_data(reg_no,stu_name,mark,St_roll_no) values
 (127,'hari',40,6);
 

 select * from stu_data;
 select * from stu2_data;
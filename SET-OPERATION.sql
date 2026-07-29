create table t1(roll_no int,mark int);
create table t2(roll_no int,mark int);

insert into t1(roll_no,mark) 
values (1,30),
       (2,42),
	   (3,50),
	   (4,90),
	   (5,38);

insert into t2(roll_no,mark) 
values (2,42),
       (4,90),
	   (6,87),
	   (7,55),
	   (8,45);

select * from t1;
select * from t2;
truncate table t2;
-- SET OPERATION
select * from t2 union select * from t1;-- Union
select * from t1 union all  select * from t2; --it return all the rows selected by both table/queries
select * from t1 intersect  select * from t2;  --it return common values from bot queries
select * from t1 except select * from t2; -- it returns the distinct row  from the t1 
select * from t2 except select * from t1; -- it returns the distinct row  from the t2 










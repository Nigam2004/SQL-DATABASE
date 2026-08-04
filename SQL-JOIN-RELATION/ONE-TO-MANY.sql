-- **ONE TO MANY RELATIONSHIP

-- | Join Type      | Result                                                              |
-- | -------------- | ------------------------------------------------------------------- |
-- | **INNER JOIN** | Only matching rows                                                  |
-- | **LEFT JOIN**  | All left rows + matching right rows                                 |
-- | **RIGHT JOIN** | All right rows + matching left rows                                 |
-- | **FULL JOIN**  | All rows from both tables                                           |
-- | **CROSS JOIN** | Every row from the first table with every row from the second table |


--TABLE-1
create table students(stu_id serial primary key,stu_name text);
 insert into students(stu_name) values ('rahul'),('nigam'),('suman');
 insert into students(stu_name) values ('deepak');
 select * from students;
--TABLE-2
 create table mark_data
 (mark_id serial primary key,
 stu_id int,
 sub text,
 mark int,
 foreign key(stu_id) references students(stu_id));
 select * from mark_data;

 insert into mark_data(stu_id,sub,mark) 
 values (1,'math',50),
 		(1,'science',60),
		(1,'english',45),
		(2,'math',78),
		(2,'science',89),
		(2,'english',68),
		(3,'math',63),
		(3,'science',75),
		(3,'english',95);

 select s.stu_name,m.sub,m.mark from
 students s inner join mark_data m on s.stu_id=m.stu_id ; --inner join return only matching rows from both table

 select s.stu_name,m.sub,m.mark from
 students s left join mark_data m on s.stu_id=m.stu_id ; --left join return all the rows of left table with NULL value and matching rows of right table

 select m.sub,m.mark,s.stu_name from
 mark_data m  right join students s on m.stu_id=s.stu_id; --right join return all the rows of right table with NULL value and matching rows of left table
 
 select s.stu_name,m.sub,m.mark from
 students s full join mark_data m on s.stu_id=m.stu_id ; --full join returns all the rows from both table.

 select s.stu_name,m.sub,m.mark from
 students s cross join mark_data m ; --CROSS JOIN returns the Cartesian product of two tables. 
 -- This means every row from the first table is combined with every row from the second table.


		 

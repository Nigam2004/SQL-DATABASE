--MANY TO MANY RELATION:
--A Many-to-Many (M:N) relationship means multiple rows in one table can be related to multiple rows in another table.
--Required ajunction table 


--TABLE-1
 create table Employees(emp_id serial primary key,emp_name text);
 drop table Employees;
 insert into Employees(emp_name) values ('rahul'),('nigam'),('suman');
 select * from Employees;
--TABLE-2
 create table emp_dept(dept_id int primary key,dept text);
 insert into emp_dept(dept_id,dept) values (101,'IT'),(102,'finance'),(103,'HR');
 select * from emp_dept;

--JUNCTION TABLE
 create table conn_table(emp_id int,
 dept_id int,
 primary key(emp_id,dept_id),
 foreign key(emp_id) references Employees(emp_id),
 foreign key(dept_id) references emp_dept(dept_id)
 );

 insert into conn_table(emp_id,dept_id)
 values (1,101),
 		(1,103),
		(2,102),
		(2,101),
		(3,102);
		 
 select * from conn_table;

 select emp.emp_id,emp.emp_name,ed.dept_id,ed.dept from conn_table ct join employees emp on ct.emp_id=emp.emp_id
 join emp_dept ed on ct.dept_id=ed.dept_id;
 -- 
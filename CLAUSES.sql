-- CLUASES 
-- 1.Group By Clause
-- 2.Having Clause
-- 3.Order By Clause

insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 30);
truncate table emp_data;
select * from emp_data;

--Group By :This clause is used to arrange similar data items into one gropu.
 select dept_no,count(*)as total_count from emp_data group by dept_no;
 select dept_no ,avg(salary)as avg_salary from emp_data group by dept_no;

 -- Having : It basicaly add condition to the Group By clause and this function is used with Group by clause.
 select dept_no ,count(*) from emp_data group by dept_no having dept_no<=20;
 select dept_no ,avg(salary) as avg_salary,count(*) as total_count from emp_data group by dept_no having avg(salary)>25000;

 -- Order By cluase: This clause is used to display the data in asseding or descending order.
 select emp_name,salary from emp_data order by salary asc;
 select emp_name,salary from emp_data order by salary desc;










insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 30);
select * from emp_data;

select emp_name,j_date,salary*0.10 as bonus from Emp_data; --here bonus is the vortual column
--Comparison operater
select emp_name,j_date,salary,dept_no from emp_data where dept_no in(10,20,30); --in operater
select emp_name,j_date,salary,dept_no from emp_data where dept_no not in(10,20); --not in operater
select emp_name,j_date,salary,dept_no from emp_data where salary between 25000 and 28000; --between operater
select emp_name,j_date,salary,dept_no from emp_data where salary  not between 25000 and 28000; --not between operater
select emp_name,salary,dept_no from emp_data where emp_name like 's%';  --like operater
select emp_name,salary,dept_no from emp_data where emp_name like '_i%';  --like operater
select emp_name,salary,dept_no from emp_data where emp_name like '%h%';  --like operater
select * from emp_data where emp_name like '___'; --like operater
select emp_name||' '|| salary as combined_name  from emp_data; --concat of text
select concat(emp_name,' ',emp_name) as combined_name from emp_data; --concat of text

--logical Operater
select * from emp_data where job_name='finance' and city='dlhi'; --logical AND
select * from emp_data where job_name='dataanalyst' or city='dlhi'; --logical OR
select * from emp_data where not job_name='executive'; --logical NOT

--Relational Operater








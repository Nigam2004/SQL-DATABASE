-- INSERT THE DATA INTO TABLE 
insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 10);

update emp_data set emp_name='sneha' where city='hyd'; --update the field in a record
delete from emp_data where emp_name='raj'; --delete the specific record

select * from emp_data;
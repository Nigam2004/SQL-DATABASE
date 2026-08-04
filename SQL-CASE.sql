insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 30);
select * from emp_data;

--CASE IS USED AS LIKE SWITCH STATEMENT/CONDITION 
 select emp_name,salary,
 case 
 	  when salary >26000 then 'high paying'
 	  when salary <26000 then 'low slary'
 else 'moderate'
 end as new_sal_col from emp_data;

--Example-2 : The below code states that one column added to the table with CASE statement.
 alter table emp_data add column salary_tag text;

 update emp_data set salary_tag=
 case 
	when salary >26000 then 'high paying'
 	when salary <26000 then 'low slary'
 else 'moderate'
 end;
 
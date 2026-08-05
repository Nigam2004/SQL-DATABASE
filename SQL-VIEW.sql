--VIEW :A VIEW in SQL is a virtual table created from the result of a SELECT query. 
-- It does not store the data itself; it stores only the SQL query. 
-- Whenever you query the view, it fetches the latest data from the underlying table(s).

 insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
 values 
 ('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
 ('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
 ('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
 ('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
 ('rahul', 'executive', '2025-10-25', 'hyd', 30000, 30);
 select * from emp_data;

 --view creation
 create view emp_data_view as select emp_name,salary,
 case
    when salary >26000 then 'high paying'
 	when salary <26000 then 'low slary'
 end as new_column from emp_data;

 --call the view 
 select * from emp_data_view;

 --Upadte a view 
 create or replace  view emp_data_view as select emp_name,salary,
 case
    when salary >26000 then 'high paying'
 	when salary <26000 then 'low slary'
 else 'modarate'
 end as new_column from emp_data;

 --call the view 
 select * from emp_data_view;
 
 --Delete the view
 drop view emp_data_view;






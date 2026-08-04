--TABLE CREATION IN SQL
CREATE TABLE Emp_data (
    emp_no SERIAL PRIMARY KEY,
    emp_name VARCHAR(100),
    job_name VARCHAR(100),
    j_date DATE,
    city VARCHAR(100),
    salary INT,
    dept_no INT
);

---ALTER WITH TABLE AND COLUMN
alter table Emp_data RENAME TO emp_all_data; --rename the table
alter table emp_all_data rename city to city_name; --rename the a column of the table
alter table emp_all_data add  age int; --add new column
alter table emp_all_data drop j_date;  --remove column
alter table emp_all_data alter column emp_name type varchar(80); --modify the datatype of a field
alter table stud_profile add constraint fk_stud_id foreign key(stu_id) references students(stu_id);
--PERMANENTLY DELETE THE TABLE 
drop table Emp_data;  --it delete all the record including table
truncate table emp_data; ---delete records only from the table

-- EXAMPLE HOW TO INSERT
-- INSERT THE DATA INTO TABLE 
insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 10);

-- FOR SHOWING THE DATA WHICH IS INSERTED
select * from emp_all_data;
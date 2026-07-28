-- There are 4 types of function in SQL
-- 1)AGGRIGATE FUNCTION
-- 2)NUMERIC FUNCTION
-- 3)CHARACTER FUNCTION
-- 4)DATE FUNCTION

insert into emp_data(emp_name,job_name,j_date,city,salary,dept_no)
values 
('nigam', 'software', '2025-10-25', 'bbsr', 25000, 10),
('raj', 'dataanalyst', '2025-10-25', 'klkt', 26000, 20),
('suman', 'finance', '2025-10-25', 'dlhi', 28000, 10),
('depak', 'hr', '2025-10-25', 'bglr', 24000, 20),
('rahul', 'executive', '2025-10-25', 'hyd', 30000, 30);
select * from emp_data;

-- AGGRIGATE FUNCTION
 select sum(salary) from emp_data where dept_no=10;
 select avg(salary) from emp_data where dept_no in (10,20);
 select max(salary) from emp_data;
 select min(salary) from emp_data;
 select count(*) from emp_data; --it returns the length of record inside the table

--NUMERIC FUNCTION DUAL
 select abs(-7) ; -- it convert -ve value to positive value 
 select greatest (40,-45,0);
 select least (10,-25,-26);
 select power(3,2) as numeric_col;
 select mod(15,2); --it returns the reminder means 1
 select round(1.4); --if the decimal value less than 0.5 then it returns the least nearest value 
 select round(1.7); --if the decimal value greater than 0.5 then it returns the greatest nearest value
 select round(12.3659, 3); --rounds the number to the nearest value
 select floor(1.8); -- it returns the floor value: 1 
 select floor(-2.6); -- it returns the floor value: -3
 select ceil(-3.6); --it returns the ceil value/highest :-3
 select ceil(2.8); --it returns the ceil value/highest :3
 select trunc(2.6);
 select trunc(12.3659,3); --truncates (cuts off) the number to the specified number of decimal places.

 --CHARACTER FUNCTION
 select upper('hello');
 select lower('HELLO');
 select length('hi nigam');  --it returns the length of the text including space
 select concat('hii',' ','nigam'); --concat of column & text
 select 'hii'||' '||'nigam'; --concat of column & text
 select strpos('computer','m'); --it returns the position of the given substring:3
 select position('m' in 'computer'); --it returns the position of the given substring:3
 select substr('compuetr',2,4); --it returns the substring from the specified position: ompu
 select trim('  nigam  '); --it remove the space from both side: nigam
 select trim('m'from 'mmpumm'); --it remove the 'm' from both side: pu
 select ltrim('nigam','n'); --it remove the 'n' from left side: igam
 select ltrim('  hello'); --it removes the space from left side:hello
 select rtrim('nigam','m'); --it remove the 'm' from right side: niga
 select lpad('computer',10,'c');  --it add the 'c' upto 10th position from right to left :cccomputer
 select rpad('computer',10,'r');  --it add the 'r' upto 10th position from left to right :cccomputer

 
-- DATE FUNCTION










 
 
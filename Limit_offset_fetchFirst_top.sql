-- Limit and offset -mysql,postgre
-- fetchfirst and rows only - oracle , IBM , SQL Server

-- 3rd highest sal
Select  salary 
from emp
order by sal DESC
limit 2,1

-- 3rd lowest sal
-- If records are null / duplicate the output maybe wrong so use DISTINCT and NOT NULL
Select DISTINCT salary 
from emp
order by sal is not null
limit 2,1

-- Return all rows from the "employee" table, but only show the first 10 rows
SELECT *
FROM emp
limit 10

-- Return the next 10 rows from the "employee" table (i.e., rows with emp_no 1011-1020):SELECT *
select *
from emp
where empno between 1011 and 1020

-- Fetch emp_no, first name, last name, joining date of 6 employees who recently joined the company:
select empno,fname,lname,join_date
from emp 
ORDER BY join_date DESC
limit 6

-- Retrieve all the details of the 2 youngest employees from the "employee" table:
select *
from emp
order by dob DESC
limit 2

-- Retrieve emp_no, first name, and salary of 3 highest-paid employees from the "employee" table:
select empno , fname , Sal 
from emp
order by sal DESC
limit 3

-- Retrieve all the details of 3 lowest-paid employees who belong to the IT department from the "employee" table:
select *
from emp
WHERE dept ='IT'
order by sal
limit 3

-- Retrieve the details of the first three employees in the "employee" table whose first name starts with the letter "J", sorted in alphabetical order by their first names:
select * 
from emp
where fname like "J%"
order by fname 
limit 3

--------------------------------------------------------------
-- TOP Clause ~ doesnt havw offset
-- Select top 3 rows and all data from them
SELECT TOP 3* 
from emp

-- 4 rows after the 2nd row
select * from emp
offset 2 rows
fetch first 4 rows only
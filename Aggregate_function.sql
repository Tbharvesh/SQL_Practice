/*
Aggregate / group / multi-row func 
These ignore NULL values
1. sum() : RETURN SUM OF ALL NON NULL VAL / NUM FIELDS ONLY / RETURN 0 FOR CHAR
2. Count(*) : WILL ALSO COUNT NULL VALUES 
3. avg() : works on only numeric and not null
4. min() : works on num/non num dtpes and not null val's
5. max()
We cannot sleect a col. with an aggregate func bcoz they club the rows and output a single value , so these cannot be mapped TO MULTIPLE ROWS unless we are using groupby clause
Ex : select sal, count(sal) from emp;
*/

SELECT COUNT(*) AS TOTAL_EMPLOYEES FROM EMP;

SELECT COUNT(DISTINCT DEPT) FROM EMP WHERE DEPT = 'IT'

-- Find the number of male employee as total_male from "employee"table.
select count(*) AS total_male FROM EMP WHERE GENDER ='M'

-- Write a SQL query to find the number of employees whose first name starts with the letter ‘J’ from "employee" table.
SELECT COUNT(*) FROM EMP WHERE FNAME LIKE 'J%' FROM EMP
-- Find the total salary of employees whose employee numbers eid(emp_no) are between 1010 and 1020 from "employee" table.
SELECT SUM(SAL) FROM EMP WHERE EMPNO BETWEEN 1010 AND 1020 


-- Write a SQL query to calculate the total annual salary of all employees as annual_salary in the HR department from "employee"table.
SELECT SUM(SAL * 12) AS ANNUAL_SAL FROM EMP WHERE DEPT ='HR'

-- 7) Write a SQL query to find the earliest joining date asmin_joining_date among all employees in the "employee" table.
SELECT MIN(JOIN_DATE) AS asmin_joining_date FROM EMP



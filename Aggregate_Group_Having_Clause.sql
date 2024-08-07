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


-- Group by

select gender,sum(sal)
from emp
group by gender

select dept,avg(sal)
from emp
group by dept 

select dept,min(sal)
from emp
where dept is not null
group by dept 

-- Determine the number of employees as total_employees in each department, sorted in descending order of the count from the employee table.
select dept,COUNT(*) as tot_emp
from emp
group by dept 
order by tot_emp desc


-- Having clause  
-- Find tot sal and no. of emp , having sal >5000 and no.of emp not eql 1
select dept,sum(sal),count(*)
from emp
group by dept 
having sum(sal) > 5000 and count(*) != 1


select dept, sum(Sal) as tot_sal
from emp
where dept is not null
GROUP BY dept 
having tot_sal between 2000 and 6000

-- Write a SQL query to count the number of duplicate first name as duplicate_count in the employee table.
select fname , count(*) as duplicate_cnt
from emp
group by fname
having count(*)>1

-- Find the departments with more than 5 employees as total_employees from the employee table
select dept,count(*)
from emp
group by dept
having count(*) > 5

-- Determine the department with at least 3 employees earning a salary 30000 or more total_employees from as the employee table.
select dept , count(*) as tot_emp
from emp
where  sal>=30000 
group by dept
having count(*) > 3;

select dept,max(Sal)
from emp
group by dept 
having max(sal)> 6000;

-- Find the department where the highest salary (as highest_salary) isat least twice the lowest salary
select dept , max(sal) , min(sal)
from emp
group by dept
having max(sal) >= 2*min(sal);

-- Determine the department with at least 5 employees (astotal_employees) where the total salary expense (astotal_salary_expense ) is greater than 100000 in the employee table
select dept , count(*) ,sum(sal)
from emp 
group by dept
HAVING count(*) >=5 and sum(sal) >10000

-- Determine the departments with more than 4 employees (astotal_employees) where the difference between the maximum andminimum salary is greater than 25000 (salary_difference) from theemployee table.
select dept,count(*) , max(sal), min(sal)
from emp 
group by dept 
having count(*)>4 and  (max(sal)-min(sal)) > 2500

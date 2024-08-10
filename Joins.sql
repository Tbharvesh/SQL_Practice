/*
Inner Join : returns matching rows in both tables
SELECT F
*/
select empid, ename ,emp.Sal ,deptId , mgrName 
from emp 

/*Write SQL query to retrieve the product ID, product name, vendor
name, and vendor country for products sold by vendors in the USA,
sorted by product ID?
*/
SELECT PRODUCT.PID ,PNAME ,VNAME 
FROM PRODUCT INNER JOIN VENDOR
ON PRODUCT.VID = VENDOR.VID
WHERE COUNTRY = 'USA'
ORDER BY PID 

/*Write SQL query to retrieve the product ID, vendor ID, and vendor
city for all products, sorted by the vendor ID*/
SELECT PID, VENDOR.VID,VCITY 
FROM PROD INNER JOIN VENDOR
ON PRODUCT.VID = VENDOR.VID 
ORDER BY VENDOR.ID 

/*Write SQL query to retrieve vendor name and calculates the total
amount of products sold by each vendor as “total_amount”. Sorts the
results in ascending order based on the total amount?*/
SELECT VNAME, SUM(PROD_PRICE)
FROM PRODUCT INNER JOIN VENDOR
ON PRODUCT.VID = VENDOR.VID
GROUP BY VENDOR.VNAME
ORDER BY SUM(PROD_PRICE)


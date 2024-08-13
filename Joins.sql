/*
Inner Join : returns matching rows in both tables on a specified condition
SELECT col_name
FROM TAB1 INNER JOIN TAB2 
ON TAB1.COL = TAB2.COL
WHERE . . 
ORDER BY . .

Natural join : automatically matches values between tables no need for join conditiond , 
colname and dtype must be same in both tables
SELECT col_name
FROM TAB1  natural JOIN TAB2 
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

/*Write SQL query to retrieve the product ID, vendor ID, product name,
vendor name, and product price from the "Products" table, joined
with the "vendors" table, where the vendor ID ends with '01' and the
product price is greater than 4*/
SELECT prod_id,vendors.vend_id,prod_name,vend_name ,prod_price
FROM Products
INNER JOIN vendor
ON products.vend_id = vendors.vend_id
WHERE vendors.vend_id LIKE '%01' AND prod_price > 4;


-- Cross join - cartesian prod.f
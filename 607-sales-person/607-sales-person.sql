# Write your MySQL query statement below
SELECT DISTINCT s.name 
FROM 
SalesPerson s
LEFT JOIN 
(
SELECT  sales_id 
FROM Orders o
JOIN Company c
ON o.com_id = c.com_id
AND c.name = 'RED'
) i
ON s.sales_id = i.sales_id
WHERE i.sales_id IS NULL
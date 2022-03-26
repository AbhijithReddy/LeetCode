# Write your MySQL query statement below
SELECT 
customer_number
# COUNT(*) as num_orders
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC LIMIT 1
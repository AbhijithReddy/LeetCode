# Write your MySQL query statement below
SELECT 
u.user_id as 'buyer_id',
u.join_date,
COUNT(o.order_date) as 'orders_in_2019'
FROM Users u
LEFT JOIN Orders o
ON o.buyer_id = u.user_id
AND YEAR(o.order_date) = 2019
GROUP BY u.user_id
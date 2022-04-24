# Write your MySQL query statement below
SELECT sell_date,
COUNT(distinct product) as num_sold,
GROUP_CONCAT(DISTINCT product SEPARATOR ',') as products
FROM Activities
GROUP BY sell_date
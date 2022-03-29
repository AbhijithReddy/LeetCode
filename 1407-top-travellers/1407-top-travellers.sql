# Write your MySQL query statement below
SELECT
DISTINCT u.name,
IFNULL(SUM(distance) OVER (PARTITION BY user_id), 0) AS 'travelled_distance'
FROM 
Users u
LEFT JOIN Rides r
ON u.id = r.user_id
# GROUP BY (r.user_id)
ORDER BY travelled_distance DESC, u.name;
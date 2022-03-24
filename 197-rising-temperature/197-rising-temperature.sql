# Write your MySQL query statement below
SELECT c.id
FROM Weather c
JOIN Weather p
ON c.recordDate = DATE_ADD(p.recordDate, INTERVAL 1 DAY)
AND c.temperature > p.temperature
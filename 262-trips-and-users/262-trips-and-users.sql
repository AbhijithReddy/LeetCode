# Write your MySQL query statement below
SELECT 
t.request_at as 'Day',
ROUND(
    COUNT(
        CASE 
            WHEN t.status <> 'completed' THEN 1.00 
            ELSE NULL
        END
    )/ COUNT(t.id), 2
) as 'Cancellation Rate'
FROM
Trips t
JOIN Users u
ON t.client_id = u.users_id
AND u.banned = 'No'
JOIN Users d
ON t.driver_id = d.users_id
AND d.banned = 'No'
AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at
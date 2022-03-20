# Write your MySQL query statement below
# SELECT distinct(innr.num) as ConsecutiveNums FROM (
# SELECT num,
# LEAD(num) OVER w as 'LEAD',
# LAG(num) OVER w as 'LAG'
# FROM Logs
# WINDOW w AS (ORDER BY id)
# ) as innr
# WHERE innr.LEAD = innr.num AND innr.LAG = innr.num;

SELECT DISTINCT(num) as ConsecutiveNums
FROM Logs
WHERE (id+1, num) IN (SELECT * FROM Logs) AND (id+2, num) IN (SELECT * FROM Logs)

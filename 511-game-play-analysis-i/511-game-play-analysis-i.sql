# Write your MySQL query statement below
# SELECT player_id, MIN(event_date) as 'first_login'
# FROM Activity
# GROUP BY player_id
# SELECT player_id, first_login
# FROM
# (
#     SELECT player_id,
#     FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date)
#     FROM Activity
# )
SELECT 
DISTINCT player_id,
FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date) as 'first_login'
FROM Activity;
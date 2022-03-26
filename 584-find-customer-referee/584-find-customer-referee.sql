# Write your MySQL query statement below
# SELECT name
# FROM Customer
# WHERE referee_id <> 2 or referee_id IS NULL
SELECT name FROM customer WHERE IFNULL(referee_id,0) <> 2;
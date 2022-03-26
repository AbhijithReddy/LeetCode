# Write your MySQL query statement below
# SELECT name
# FROM Customer
# WHERE referee_id <> 2 or referee_id IS NULL
select name from customer where referee_id is null || referee_id != 2;
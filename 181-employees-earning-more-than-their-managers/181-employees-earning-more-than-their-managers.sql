# Write your MySQL query statement below
SELECT name as 'Employee'
FROM Employee e
WHERE salary > (SELECT salary FROM Employee m WHERE m.id = e.managerId)
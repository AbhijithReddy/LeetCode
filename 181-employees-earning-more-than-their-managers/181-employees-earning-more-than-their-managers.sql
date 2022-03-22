# Write your MySQL query statement below
# SELECT name as 'Employee'
# FROM Employee e
# WHERE salary > (SELECT salary FROM Employee m WHERE m.id = e.managerId)
SELECT e1.name as 'Employee'
FROM Employee e1
JOIN Employee e2
ON e2.id = e1.managerId
WHERE e1.salary > e2.salary
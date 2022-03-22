# Write your MySQL query statement below
# SELECT d.name as 'Department', e.name as 'Employee', e.salary as 'Salary'
# FROM Employee e
# JOIN Department d ON e.departmentId = d.id
# WHERE (d.id, e.salary) IN (SELECT d1.id, MAX(e1.salary) FROM Employee e1 JOIN Department d1 ON e1.departmentId = d1.id GROUP BY d1.id)

SELECT D.Name AS Department ,E.Name AS Employee ,E.Salary 
FROM
	Employee E,
	(SELECT DepartmentId,max(Salary) as max FROM Employee GROUP BY DepartmentId) T,
	Department D
WHERE E.DepartmentId = T.DepartmentId 
  AND E.Salary = T.max
  AND E.DepartmentId = D.id;
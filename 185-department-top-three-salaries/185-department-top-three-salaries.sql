# Write your MySQL query statement below
SELECT Department, Employee, Salary 
FROM
(
SELECT d.name as 'Department', 
e.name as 'Employee', 
e.salary as 'Salary',
DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) as 'SalaryRank' 
FROM Employee e
JOIN Department d ON e.departmentId = d.id
) as innerqry
WHERE innerqry.SalaryRank < 4
# ORDER BY Department, Salary DESC, Employee;
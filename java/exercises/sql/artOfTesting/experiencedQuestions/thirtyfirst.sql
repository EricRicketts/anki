-- Ques. 31. Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table.
-- Note in this case an employee who is a manager will have the same EmpId as his ManagerId
SELECT E.FullName AS EmployeeName, M.FullName AS ManagerName
FROM EmployeeDetails AS E
INNER JOIN EmployeeDetails AS M
ON E.EmpId = M.ManagerId;
-- Just using WHERE
SELECT E.FullName AS EmployeeName, M.FullName AS ManagerName
FROM EmployeeDetails AS E, EmployeeDetails AS M
WHERE E.EmpId = E.ManagerId;

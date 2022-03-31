-- Ques.6. Write an SQL query to fetch those employees (EmplId, City, ManagerId) who live in Toronto and work
-- under manager with ManagerId – 321.
SELECT *
FROM EmployeeDetails
WHERE City = 'Toronto' AND ManagerId = 321;
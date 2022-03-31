-- Ques.7. Write an SQL query to fetch all the employees who either live in California or
-- work under a manager with ManagerId – 321 (EmpId, City, ManagerId).
SELECT EmpId, City, ManagerId
FROM EmployeeDetails
WHERE City = 'California' OR ManagerId = 321;
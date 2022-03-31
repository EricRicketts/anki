-- Ques.18. Write an SQL query to display both the EmpId and ManagerId joined together in one field
SELECT CONCAT(EmpId, ManagerId) AS NewId
FROM EmployeeDetails;
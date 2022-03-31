-- Ques.16. Write an SQL query to fetch the employee full names and replace the space with ‘-’.
SELECT FullName
REPLACE (FullName, ' ', '-')
FROM EmployeeDetails;
-- OR
SELECT REPLACE(FullName, ' ', '-')
FROM EmployeeDetails;

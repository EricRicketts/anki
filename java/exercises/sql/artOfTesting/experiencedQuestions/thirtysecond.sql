-- Ques.32. Write an SQL query to fetch duplicate records from EmployeeDetails
-- (without considering the primary key – EmpId).
SELECT FullName, ManagerId, DateOfJoining, City, COUNT(*) AS Duplicates
FROM EmployeeDetails
GROUP BY FullName, Managerid, DateOfJoining, City
HAVING Duplicates > 1;
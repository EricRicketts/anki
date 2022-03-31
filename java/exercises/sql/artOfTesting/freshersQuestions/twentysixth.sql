-- Ques.26. Write an SQL query to fetch all the Employees details from EmployeeDetails
-- table who joined in the Year 2020.
SELECT *
FROM EmployeeDetails
WHERE YEAR(DateOfJoining) = 2020;
-- OR
SELECT *
FROM EmployeeDetails
WHERE DateOfJoining BETWEEN '2020/01/01' AND '2020/12/31';
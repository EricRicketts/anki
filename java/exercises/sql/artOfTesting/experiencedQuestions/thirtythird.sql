-- Ques.33. Write an SQL query to remove duplicates from a table without using a temporary table.
DELETE FROM EmployeeDetails AS E1
INNER JOIN EmployeeDetails AS E2
WHERE E1.EmpId > E2.EmpId AND
E1.FullName = E2.FullName AND
E1.ManagerId = E2.ManagerId AND
E1.DateOfJoining = E2.DateOfJoining AND
E1.City = E2.City;
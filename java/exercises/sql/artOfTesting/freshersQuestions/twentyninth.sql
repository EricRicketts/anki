-- Ques.29. Write a query to fetch employee names and salary records. Display the employee details
-- even if the salary record is not present for the employee.
SELECT EmployeeDetails.FullName, EmployeeSalary.Salary
FROM EmployeeDetails
LEFT JOIN EmployeeSalary
ON EmployeeDetails.EmpId = EmployeeSalary.EmpId;
-- this works because all of the records from EmployeeDetails are shown
-- if there is matching data in the right table it is also shown if there
-- is no matching data then the value for the right columns is NULL
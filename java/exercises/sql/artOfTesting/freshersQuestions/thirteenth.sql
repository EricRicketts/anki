-- Ques.13. Write an SQL query to fetch records that are present in one table but not in another table.
SELECT *
FROM EmployeeSalary
LEFT JOIN EmployeeDetails
ON EmployeeSalary.EmpId = EmployeeDetails.EmpId
WHERE EmployeeDetails.EmpId IS NULL;
-- this how the above works
-- the LEFT JOIN will take all of the records from EmployeeSalary
-- and add the records in the EmployeeDetails which meet the join condition
-- in other words if any record exists in both tables which meets the join condition
-- then both of those records are selected one record from EmployeeSalary and one record from EmployeeDetails
-- if the join condition is not met then a record will be selected from "the left" ie, EmployeeSalary
-- and the record from "the right", ie EmployeeDetails will have all columns as NULL
-- when we Add EmployeeDetails.EmpId IS NULL we are selecting only those records in EmployeeSalary
-- but not in EmployeeDetails.
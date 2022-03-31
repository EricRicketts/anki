-- Ques.19. Write a query to fetch only the first name(string before space) from the FullName
-- column of the EmployeeDetails table.
SELECT SUBSTRING_INDEX(FullName, ' ', 1)
FROM EmployeeDetails;

-- another approach
SELECT MID(FullName, 1, LOCATE(' ', FullName)) AS FirstName
FROM EmployeeDetails;
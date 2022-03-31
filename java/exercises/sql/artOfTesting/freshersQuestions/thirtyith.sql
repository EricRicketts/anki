-- Ques.30. Write an SQL query to join 3 tables.
-- assume tables are A, B, and C
SELECT column1, column2, column3
FROM A
INNER JOIN B
ON A.join_column1 = B.join_column1
INNER JOIN C
ON A.join_column2 = C.join_column2;
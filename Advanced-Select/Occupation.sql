/*
Enter your query here.
Order of join is decided by the highest count of profession. like Professor are 7(see the last problem) so they decide the direction of join.
https://www.hackerrank.com/challenges/occupations/problem
*/
SET @row1=0, @row2 = 0, @row3 = 0, @row4 = 0;

SELECT t1.name, t2.name, t3.name, t4.name
FROM

(SELECT (@row1:=@row1 + 1) AS num1, Name FROM Occupations WHERE Occupation = 'Doctor' ORDER BY Name) as t1
RIGHT JOIN

(SELECT 
    (@row2:=@row2 + 1) AS num2, 
    Name
FROM
    Occupations
    WHERE Occupation = 'Professor'
ORDER BY Name) as t2

ON t1.num1 = t2.num2

LEFT JOIN

(SELECT 
    (@row3:=@row3 + 1) AS num3, 
    Name
FROM
    Occupations
    WHERE Occupation = 'Singer'
ORDER BY Name) as t3

ON t2.num2 = t3.num3

LEFT JOIN

(SELECT 
    (@row4:=@row4 + 1) AS num4, 
    Name
FROM
    Occupations
    WHERE Occupation = 'Actor'
ORDER BY Name) as t4

ON t2.num2 = t4.num4

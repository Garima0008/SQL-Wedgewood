SELECT * FROM wpdatabase.employee;

/*********************************View for worked hours***********************************************/
CREATE VIEW wpdatabase.WorkedHours AS
SELECT FirstName, LastName, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

SELECT * 
FROM WorkedHours;


/*Suppose that Wedgewood users need to 
know which employees are assigned to which projects and how many hours 
each employee has worked on that project.*/

CREATE VIEW EmployeeProjectHoursWorkedView AS
SELECT FirstName, LastName, ProjectName, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
JOIN PROJECT AS P 
ON P.ProjectID = A.ProjectID;
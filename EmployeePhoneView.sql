CREATE VIEW EmployeePhoneView AS 
SELECT FirstName, LastName, OfficePhone AS EmployeePhone
FROM EMPLOYEE; 


/*/////////////////////////////////////////////////////*/
SELECT *
FROM EmployeePhoneView
ORDER BY LastName, FirstName;
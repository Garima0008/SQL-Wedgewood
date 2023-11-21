use wpdatabase;
/*////////////// Using Stored Procedures ////////////////////*/

DELIMITER //
CREATE PROCEDURE GetEmployeesByDepartment(
IN OfficeDepartment CHAR(35))

BEGIN

SELECT *
FROM EMPLOYEE 
WHERE Department = OfficeDepartment;

END
//DELIMITER ;
/*///////////////// Calling the function GetEmployeesByDepartment //////////////*/
CALL GetEmployeesByDepartment("Accounting");
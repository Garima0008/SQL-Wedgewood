use wpdatabase;
/*////////////// Using Stored Procedures ////////////////////*/

DELIMITER //
CREATE PROCEDURE GetEmployeesBySupervisor(
IN OfficeSupervisor INT)

BEGIN

SELECT *
FROM EMPLOYEE
WHERE Supervisor = OfficeSupervisor;

END
//DELIMITER ;
/*///////////////// Calling the function GetEmployeesBySupervisor //////////////*/
CALL GetEmployeesBySupervisor(4);
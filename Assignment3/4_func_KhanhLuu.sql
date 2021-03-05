------ SECTION 4 -------

/*** Create a function to implement the following requirements: ***/
/*** Retrieve the instructor’s name who teaches a given course ***/

DELIMITER $
CREATE FUNCTION COURSE_INSTRUCTOR(`COURSE NAME` VARCHAR(40))
	RETURNS VARCHAR(50)
	BEGIN
		DECLARE `INSTRUCTOR NAME` VARCHAR(50);
    	SELECT I.INSTRUCTORNAME INTO `INSTRUCTOR NAME`
    	FROM INSTRUCTOR AS I JOIN COURSE AS C ON I.INSTRUCTORID = C.INSTRUCTORID
    	WHERE C.COURSENAME = `COURSE NAME`;
    	RETURN (`INSTRUCTOR NAME`);
    END $
DELIMITER ;

mysql> SELECT COURSE_INSTRUCTOR("CYBER FORENSICS");
+--------------------------------------+
| COURSE_INSTRUCTOR("CYBER FORENSICS") |
+--------------------------------------+
| HOSEA JACK                           |
+--------------------------------------+
1 row in set (0.00 sec)

------ SECTION 5 PART 1 -------

/*** A stored procedure to output the names of the TAs for a given instructor. ***/
/*** The instructor can teach multiple courses, so retrieve the TAs for all his/her courses. ***/

DELIMITER $
CREATE PROCEDURE GET_TA (IN `INSTRUCTOR ID` CHAR(9))
    BEGIN
        SELECT  STUDENTNAME
        FROM    STUDENT AS S, COURSE AS C
        WHERE   `INSTRUCTOR ID` = C.INSTRUCTORID AND C.TASSN = S.SSN;
    END $
DELIMITER ;

mysql> CALL GET_TA(@`INSTRUCTOR ID`);
Empty set (0.00 sec)




------ SECTION 5 PART 2 -------


/*** A stored procedure to output all the students enrolled in a given course. (use select statement, as shown in the examples of MySQL procedure slides) ***/

DELIMITER $
CREATE PROCEDURE GETSTUDENTCOURSE(IN `COURSE NUMBER` CHAR(12)) 
	BEGIN
		SELECT S.SSN, S.STUDENTNAME, S.ADDRESS, S.EMAIL
		FROM STUDENT AS S, ENROLLED AS E
		WHERE `COURSE NUMBER` = E.COURSENO AND E.SSN = S.SSN;
	END $
DELIMETER ;

mysql> CALL GETSTUDENTCOURSE('CSC11');
+-----------+--------------+------------------------------------------+------------------+
| SSN       | STUDENTNAME  | ADDRESS                                  | EMAIL            |
+-----------+--------------+------------------------------------------+------------------+
| 123456789 | RICK NOVAK   | 14 ABIN WAY, SACRAMENTO, CA 95823        | RICK@GMAIL.COM   |
| 567890123 | RONALD BARR  | 45 PARK DR, SACRAMENTO, CA 94203         | RONALD@GMAIL.COM |
| 678901234 | JEFF JOHNSON | 14 ARROUO VISTA DR, SACRAMENTO, CA 94211 | JEFF@GMAIL.COM   |
| 987654321 | SUSAN CONNOR | 29 ABERT COURT, ELK GROVE, CA 95758      | SUSAN@GMAIL.COM  |
+-----------+--------------+------------------------------------------+------------------+
4 rows in set (0.00 sec)

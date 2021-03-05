/*When add a new record in the enrollment table, update the corresponding 
value of NoOfStudents enrolled in the course. 
Trigger Name: Inc_enrollment_number
*/

DELIMITER $
CREATE TRIGGER INC_ENROLLMENT_NUMBER
    AFTER INSERT ON ENROLLED
    FOR EACH ROW
    BEGIN
        UPDATE COURSE
        SET NOOFSTUDENTS = NOOFSTUDENTS + 1
        WHERE NEW.COURSENO = COURSENO;
    END $
DELIMITER ;




/* 
When delete a record in the enrollment table, 
update the corresponding value of NoOfStudents enrolled in the course. 
Trigger Name: Del_enrollment_number
*/


DELIMITER $
CREATE TRIGGER DEL_ENROLLMENT_NUMBER
    AFTER DELETE ON ENROLLED
    FOR EACH ROW
    BEGIN
        UPDATE COURSE
        SET NOOFSTUDENTS = NOOFSTUDENTS - 1
        WHERE OLD.COURSENO = COURSENO;
    END $
DELIMITER ;



 
	
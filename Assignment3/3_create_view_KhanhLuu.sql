------ SECTION 3 PART 1 -------

/*** A view constructed by a list of students’ names and email addresses who are teaching assistants. ****/
/*** Also get the course names for which they are teaching assistants ****/

CREATE VIEW TA_COURSE(`TA NAME`, `TA EMAIL`, `COURSE NAME`)AS
SELECT ST.STUDENTNAME, ST.EMAIL, C.COURSENAME
FROM STUDENT AS ST 
INNER JOIN COURSE AS C ON ST.SSN = C.TASSN;


mysql> SELECT * FROM TA_COURSE;
+--------------+-----------------+----------------------+
| TA_NAME      | TA_EMAIL        | COURSE_NAME          |
+--------------+-----------------+----------------------+
| JEFF JOHNSON | JEFF@GMAIL.COM  | COMPUTER PROGRAMMING |
| SUSAN CONNOR | SUSAN@GMAIL.COM | VLSI                 |
| SUSAN CONNOR | SUSAN@GMAIL.COM | CYBER FORENSICS      |
+--------------+-----------------+----------------------+
3 rows in set (0.00 sec)


------ SECTION 3 PART 2 -------

/*** A view constructed by a list of students who got at least 2 “A” in their course ***/

CREATE VIEW STUDENT_GRADE_A(`STUDENT SSN`, `NO OF A''S GOTTEN`) AS
SELECT SSN, COUNT(GRADE)
FROM ENROLLED
WHERE GRADE ='A'
GROUP BY SSN
HAVING COUNT(GRADE) >=2;


mysql> SELECT * FROM STUDENT_GRADE_A;
+-----------+--------------+
| SSN       | COUNT(GRADE) |
+-----------+--------------+
| 567890123 |            3 |
| 678901234 |            2 |
+-----------+--------------+
2 rows in set (0.00 sec)

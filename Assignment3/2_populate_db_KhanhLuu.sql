------ INSERT STUDENT TABLE -------

INSERT INTO STUDENT VALUES("123456789", "RICK NOVAK", "14 ABIN WAY, SACRAMENTO, CA 95823", "RICK@GMAIL.COM");
INSERT INTO STUDENT VALUES("987654321", "SUSAN CONNOR", "29 ABERT COURT, ELK GROVE, CA 95758", "SUSAN@GMAIL.COM");
INSERT INTO STUDENT VALUES("567890123", "RONALD BARR", "45 PARK DR, SACRAMENTO, CA 94203", "RONALD@GMAIL.COM");
INSERT INTO STUDENT VALUES("678901234", "JEFF JOHNSON", "14 ARROUO VISTA DR, SACRAMENTO, CA 94211", "JEFF@GMAIL.COM");


mysql> SELECT * FROM STUDENT;
+-----------+--------------+------------------------------------------+------------------+
| SSN       | STUDENTNAME  | ADDRESS                                  | EMAIL            |
+-----------+--------------+------------------------------------------+------------------+
| 123456789 | RICK NOVAK   | 14 ABIN WAY, SACRAMENTO, CA 95823        | RICK@GMAIL.COM   |
| 567890123 | RONALD BARR  | 45 PARK DR, SACRAMENTO, CA 94203         | RONALD@GMAIL.COM |
| 678901234 | JEFF JOHNSON | 14 ARROUO VISTA DR, SACRAMENTO, CA 94211 | JEFF@GMAIL.COM   |
| 987654321 | SUSAN CONNOR | 29 ABERT COURT, ELK GROVE, CA 95758      | SUSAN@GMAIL.COM  |
+-----------+--------------+------------------------------------------+------------------+
4 rows in set (0.00 sec)


------ INSERT TA TABLE -------

INSERT INTO TA VALUES("987654321", "200");
INSERT INTO TA VALUES("678901234", "300");


mysql> SELECT * FROM TA;
+-----------+--------+
| SSN       | SALARY |
+-----------+--------+
| 678901234 | 300    |
| 987654321 | 200    |
+-----------+--------+
2 rows in set (0.00 sec)

------ INSERT INSTRUCTOR TABLE -------
INSERT INTO INSTRUCTOR VALUES("PROFESSOR", "998877665", "MINTA LOFTON");
INSERT INTO INSTRUCTOR VALUES("ASSISTANT PROFESSOR ", "887766554", "HOSEA JACK");
INSERT INTO INSTRUCTOR VALUES("ASSOCIATE PROFESSOR", "776655443", "DEEANNA SOUKUP");



mysql> SELECT * FROM INSTRUCTOR;
+----------------------+--------------+----------------+
| TITLE                | INSTRUCTORID | INSTRUCTORNAME |
+----------------------+--------------+----------------+
| ASSOCIATE PROFESSOR  | 776655443    | DEEANNA SOUKUP |
| ASSISTANT PROFESSOR  | 887766554    | HOSEA JACK     |
| PROFESSOR            | 998877665    | MINTA LOFTON   |
+----------------------+--------------+----------------+
3 rows in set (0.00 sec)



------ INSERT COURSE TABLE -------
INSERT INTO COURSE VALUES("CSC20", "CYBER FORENSICS", "37", "887766554", "987654321");
INSERT INTO COURSE VALUES("CSC11", "VLSI", "40", "998877665", "987654321");
INSERT INTO COURSE VALUES("CSC12", "COMPUTER PROGRAMMING", "37", "776655443", "678901234");


mysql> SELECT * FROM COURSE;
+----------+----------------------+--------------+--------------+-----------+
| COURSENO | COURSENAME           | NOOFSTUDENTS | INSTRUCTORID | TASSN     |
+----------+----------------------+--------------+--------------+-----------+
| CSC11    | VLSI                 |           40 | 998877665    | 987654321 |
| CSC12    | COMPUTER PROGRAMMING |           37 | 776655443    | 678901234 |
| CSC20    | CYBER FORENSICS      |           37 | 887766554    | 987654321 |
+----------+----------------------+--------------+--------------+-----------+
3 rows in set (0.00 sec)

------ INSERT ENROLLED TABLE -------

INSERT INTO ENROLLED VALUES("987654321", "CSC11", "B");
INSERT INTO ENROLLED VALUES("123456789", "CSC11", "A");
INSERT INTO ENROLLED VALUES("678901234", "CSC11", "A");
INSERT INTO ENROLLED VALUES("678901234", "CSC12", "A");
INSERT INTO ENROLLED VALUES("567890123", "CSC11", "A");
INSERT INTO ENROLLED VALUES("567890123", "CSC12", "A");
INSERT INTO ENROLLED VALUES("567890123", "CSC20", "A");



mysql> SELECT * FROM ENROLLED;
+-----------+----------+-------+
| SSN       | COURSENO | GRADE |
+-----------+----------+-------+
| 123456789 | CSC11    | A     |
| 567890123 | CSC11    | A     |
| 567890123 | CSC12    | A     |
| 567890123 | CSC20    | A     |
| 678901234 | CSC11    | A     |
| 678901234 | CSC12    | A     |
| 987654321 | CSC11    | B     |
+-----------+----------+-------+
7 rows in set (0.00 sec)







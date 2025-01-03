CREATE TABLE STUDENT (
	 ID  integer
	,NAME  VARCHAR(30)
);

CREATE TABLE EXAMINATION (
	 STUDENT_ID  integer
	,SUBJECT  VARCHAR(30)
);
SELECT * FROM STUDENT;
INSERT INTO STUDENT (ID, NAME)
VALUES
    (1, 'Samantha'),
	(2, 'Jane'),
	(3, 'Bob'),
	(4, 'Scarlet'),
	(5, 'David');
	
INSERT INTO EXAMINATION (student_id, subject)
VALUES
    (1, 'Biology'),
	(1, 'Physics'),
	(3, 'History'),
	(4, 'Geography'),
	(4, 'Geography');
	
select STUDENT.ID, EXAMINATION.SUBJECT, COUNT(EXAMINATION.SUBJECT) AS NUMBER_OF_TIMES
	FROM STUDENT
	 JOIN EXAMINATION 
		ON (STUDENT.ID = EXAMINATION.STUDENT_ID)
	GROUP BY STUDENT.ID, EXAMINATION.SUBJECT;
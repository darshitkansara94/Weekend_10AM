Create database yourname_Date (Darshit_24052025)
	Create table tbl_Student
		Student Id (PK, Identity)
		Student Name
		Student Address
		Student Age
	Create table tbl_StudentDetail
		Student Detail Id (PK, Identity)
		Student Id (FK)
		Student Subject
		Student Marks

		constraint fk_studentid foreign key(student_id) references 
		tbl_student (student_id)


	Write a condition based on marks :
		Marks greater than 90 = 'Grade A'
		Marks between 75 to 89 = 'Grade B'
		Marks between 55 to 74 = 'Grade C'
		marks between 45 to 54 = 'Grade D'
		marks between 35 to 44 = 'Grade E'
		Marks below 35 = 'Grade F'
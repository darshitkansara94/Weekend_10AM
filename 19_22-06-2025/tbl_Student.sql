Create table tbl_Student
(
	Student_Id int primary key identity(1,1),
	Student_Name nvarchar(50),
	Student_Subject nvarchar(50),
	Student_Marks decimal(18,2)
)

Alter table tbl_Student
Add Student_Subject1 nvarchar(50)

Alter table tbl_Student
Add Student_Marks1 decimal(18,2)

Insert into tbl_Student(Student_Name,Student_Subject,Student_Marks,Student_Subject1,Student_Marks1)
values('Nikhil','Maths',59,'SS',89),('Jal','Maths',85,'SS',45),('Shruti','Maths',80,'SS',56),
	('Aayushi','Maths',56,'SS',86)

	Select* from tbl_Student
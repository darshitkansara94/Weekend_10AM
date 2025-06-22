Alter function fn_Grade
(
	@Student_Id int
)
Returns Table
As
	Return(
		Select Student_Name,Student_Subject,Student_Subject1,Student_Marks,Student_Marks1,
		Case
			When Student_Marks between 90 and 100 Then 'Grade A'
			When Student_Marks between 75 and 89 Then 'Grade B'
			When Student_Marks between 65 and 74 Then 'Grade C'
			When Student_Marks between 55 and 64 Then 'Grade D'
			When Student_Marks between 35 and 54 Then 'Grade E'
			Else 'Frade F' End as Grade
		from tbl_Student Where Student_Id  = @Student_Id
	)


Select * from tbl_Student

Select * from dbo.fn_Grade(1)


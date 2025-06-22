Create function fn_GradeOnly()
Returns Table
As
	Return(
		Select Student_Marks,Student_Id,
		Case
			When Student_Marks between 90 and 100 Then 'Grade A'
			When Student_Marks between 75 and 89 Then 'Grade B'
			When Student_Marks between 65 and 74 Then 'Grade C'
			When Student_Marks between 55 and 64 Then 'Grade D'
			When Student_Marks between 35 and 54 Then 'Grade E'
			Else 'Frade F' End as Grade
		from tbl_Student
	)

Select 
 fn.Student_Marks,fn.Grade,ts.Student_Name
from dbo.fn_GradeOnly() as fn
Inner join tbl_Student ts on fn.Student_Id = ts.Student_Id

Select * from tbl_Student
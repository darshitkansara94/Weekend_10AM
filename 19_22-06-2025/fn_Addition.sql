Create function fn_Addition
(
	@Value1 as int,
	@Value2 as int
)
Returns decimal(18,2)
As
Begin
	Return(@Value1 + @Value2)
End

Select dbo.fn_Addition(2,2) as Addition

Select * from tbl_Student

Select Student_Id,Student_Name,Student_Subject,Student_Marks,Student_Subject1,Student_Marks1,
dbo.fn_Addition(Student_Marks,Student_Marks1) as TotalMarks
from tbl_Student




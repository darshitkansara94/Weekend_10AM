Create trigger tr_LogDelete
On tbl_Category
For Delete
As
Begin
	Declare @UserId int
	Declare @CategoryName nvarchar(50)

	Select @UserId = User_Id from deleted
	Select @CategoryName = Category_Name from deleted

	Insert into tbl_log(Log_Description,Log_Table,Log_Date,User_id)
	values('Deleted value from tbl_category, value : ' + @CategoryName,'tbl_Category',GETDATE(),@UserId)
End

Select * from tbl_Category
Select * from tbl_Log

Delete from tbl_Category where Category_Id = 9
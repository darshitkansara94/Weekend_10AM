Create trigger tr_LogUpdate
On tbl_Category
After Update
As
Begin
	Declare @UserId int
	Declare @CategoryName nvarchar(50)

	Select @UserId = User_Id from inserted
	Select @CategoryName = Category_Name from inserted

	Insert into tbl_log(Log_Description,Log_Table,Log_Date,User_id)
	values('Updated tbl_category with value : ' + @CategoryName,'tbl_Category',GETDATE(),@UserId)
End

Select * from tbl_Category

Select * from tbl_SubCategory

Select * from tbl_log

Update tbl_Category set Category_Name = 'Android Phone'
where Category_Id = 7
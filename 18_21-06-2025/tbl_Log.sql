Alter trigger tr_Log
On tbl_Category
For Insert
As
Begin
	
	Declare @UserId int
	Declare @CategoryName nvarchar(50)

	Select @UserId = User_Id from inserted
	Select @CategoryName = Category_Name from inserted

	Insert into tbl_Log(Log_Description,Log_Table,Log_Date,User_id)
	values('Insert into tbl_category with value : ' + @CategoryName,'tbl_Category',GETDATE(),@UserId)	
End


Select * from tbl_log

Select * from tbl_Category

Insert into tbl_Category(Category_Id,Category_Name, User_Id)
values(10,'Phone',2)
Alter procedure sp_InsertCategory
(
	@Category_Name nvarchar(50),
	@Subcategory_Id int
)
As
Begin
	Begin transaction tr_InsertCategory
	Begin try
		Insert into tbl_CategoryMaster(Category_Name,Modified_Date)
		values(@Category_Name,GETDATE())

		Insert into tbl_OrderMaster(Order_Id,Subcategory_Id)
		values(7,@Subcategory_Id)

		commit transaction tr_InsertCategory
	End try
	Begin catch
		rollback transaction tr_InsertCategory

		print('Data not inserted for Category Master')
	End catch
End

Select * from tbl_CategoryMaster
select * from tbl_OrderMaster

Exec sp_InsertCategory @Category_Name = 'C' , @Subcategory_Id = 1
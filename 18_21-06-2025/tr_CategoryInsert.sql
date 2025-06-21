Create trigger tr_CategoryInsert
On tbl_Category
For insert
As
Begin
	print('tr_CategoryInsert is executed')
End

Select * from tbl_Category

Insert into tbl_Category(Category_Id,Category_Name,Created_Date)
values(3,'TV',GETDATE())
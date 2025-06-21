Alter trigger tr_CategoryInsertAfter
On tbl_Category
After insert
As
Begin
	print('tr_CategoryInsertAfter is executed')
End

Insert into tbl_Category(Category_Id,Category_Name,Created_Date)
values(5,'Watch',GETDATE())

Update tbl_Category set Category_Name = 'AC' where Category_Id = 5
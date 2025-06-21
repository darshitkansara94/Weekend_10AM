Create trigger tr_CategoryInsert_Update
On tbl_Category
After Update
As
Begin
	print('tr_CategoryInsert_Update is executed')
End
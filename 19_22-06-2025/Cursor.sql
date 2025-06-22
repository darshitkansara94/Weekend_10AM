Cursor :
	Cursor is a iterable operation which allow user to fetch every row from  the table.
	Cursor fetch row by row data from table.
	Compare to other SQL statements cursor is slow in performanace.
	Do not use cursor if you have large DB.

	-- Syntax :
		Declare cursor_name Cursor
			for Select_Statement
			Open cursor_name
				fetch next from cursor_name into variable
			Close cursor_name

		Deallocate cursor_name


		-- Example
		Select * from tbl_CategoryMaster

		-- Single value return
		Declare @CategoryName nvarchar(50)

		Declare cr_Catagory Cursor
			for Select Category_Name from tbl_CategoryMaster
			Open cr_Catagory
				fetch next from cr_Catagory into @CategoryName

				print(@CategoryName)
			Close cr_Catagory

		Deallocate cr_Catagory

		-- Multiple data fetch
		Declare @Category_Name nvarchar(50)

		Declare cr_CategoryMaster Cursor
			for Select Category_name from tbl_CategoryMaster

			Open cr_CategoryMaster
				fetch next from cr_CategoryMaster into @Category_Name

				print(@Category_Name)

				While @@FETCH_STATUS = 0
				Begin
					fetch next from cr_CategoryMaster into @Category_Name

					print(@Category_Name)
				End

			Close cr_CategoryMaster
		Deallocate cr_CategoryMaster

		-- Multiple data with multiple column fetch
		Declare @Category_Name nvarchar(50)
		Declare @Category_Id int

		Declare cr_CategoryMaster Cursor
			for Select Category_Id,Category_name from tbl_CategoryMaster

			Open cr_CategoryMaster
				fetch next from cr_CategoryMaster into @Category_Id,@Category_Name

				print(Cast(@Category_Id as nvarchar(5)) + '|' + @Category_Name)

				While @@FETCH_STATUS = 0
				Begin
					fetch next from cr_CategoryMaster into @Category_Id,@Category_Name

					print(Cast(@Category_Id as nvarchar(5)) + '|' + @Category_Name)
				End

			Close cr_CategoryMaster
		Deallocate cr_CategoryMaster
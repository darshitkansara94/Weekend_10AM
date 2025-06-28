Subquery :
	Subquery is writing a sql statement inside one statment.
	We can use subquery when we need output from some another data.
	In subquery, First inner query execute first and then outer query is execute.

	-- Syntax :
		Select column1, (
			Select columnname from tbl_name
		) as alias_name
			from tbl_name

		-- Use in where clause
		Select columnname1,columnname2,... from tbl_name
			where columnName in (Select columnName from tbl_name)

	-- Example :
		-- Identify the Ordered Category
		Select Category_Id,Category_Name 
		from tbl_CategoryMaster where 
			Category_Id in (Select Category_Id from tbl_OrderMaster)

		-- Identify the category which is not ordered yet.
		Select Category_Id,Category_Name 
		from tbl_CategoryMaster
		where Category_Id not in (Select Category_Id from tbl_OrderMaster)

		-- within Select statement
		Select 
			Category_Id,Category_Name,(Select Count(*) from tbl_OrderMaster where 
				Category_Id = tbl_CategoryMaster.Category_Id) as Total_Order
		from tbl_CategoryMaster

		Select Category_Id,Category_Name 
		from tbl_CategoryMaster where 
			Category_Id in (1,2,1)

		Insert into tbl_OrderMaster(Category_Id) values(5)
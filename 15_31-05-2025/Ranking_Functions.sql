Ranking Functions :
	Ranking function use to create serial number or manipulate data in the table.

	-- Types of Ranking function
		-- Row_number()
			Row_number is a function which providers sequantial number in asc/ desc order.

			-- Syntax :
				Select ROW_NUMBER() over(order by column_name asc/desc) as alias_name,
					columnN from tbl_Name

			-- Example :
				Select Category_Id,Category_Name,Modified_Date,Created_Date,IsDeleted 
				from tbl_CategoryMaster

				Select ROW_NUMBER() over(order by Category_Id) as Sr_No,
				Category_Id,Category_Name,Modified_Date,Created_Date,IsDeleted 
				from tbl_CategoryMaster

				delete from tbl_CategoryMaster where Category_Id = 4


		-- Dense_Rank()
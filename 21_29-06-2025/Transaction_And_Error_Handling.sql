Transactions :
	Transaction is process when we have hirerachy in DML operation.
	When we want to make sure that all statement are execute successfully then only data 
		is reflect in table then we can use transaction.
	commit :
		Commit is execute when our all the sql statement are execute succesfully.
	Rollback :
		Rollback is exeucte when one of the sql statement is failed.
		It will reverse all previous entries from the table.

	Error Handling :
		Error handling is use to handle a error from developer end.
		We can return custom message by using error handling.

		-- Syntax :
			Begin try
				-- SQL code
			End try
			Begin catch
				-- Handle error
			End catch

		-- Example :
			Begin try
				print('Execute before select statement in try block')

				Select 15/0 as Division

				print('Execute in try block')
			End try
			Begin catch
				print('Can not divide by zero')
			End catch

		-- Syntax for transaction
			Begin transaction tr_name
			Commit transaction tr_name

			-- Rollback
			Begin transaction tr_name
			rollback transaction tr_name

		-- Example :
			Select * from tbl_CategoryMaster

			Begin transaction tr_InsertCategory
				Insert into tbl_CategoryMaster(Category_Name)
				values('One Plus')
			Commit transaction tr_InsertCategory

			Select * from tbl_CategoryMaster

			Begin transaction tr_InsertCategory
			Insert into tbl_A(A_ID,A_Name) values(8,'B')

			Commit transaction tr_InsertCategory

			Begin transaction tr_InsertCategory
				Insert into tbl_A(A_ID,A_Name,A_Address) values(9,'C','Valsad')

			Rollback transaction tr_InsertCategory
				
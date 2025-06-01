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


		-- Dense_Rank() :
			Dense Rank function providee sequential number like row number function but the difference is it will provide same sequential number
				to the value given in order by.

			-- Syntax :
				Select DENSE_RANK() over(order by columnName asc/desc) as alias_name,columnname from tbl_Name

			-- Example :
				Select * from tbl_Employee

				Select Employee_Id,Employee_Name,
				ROW_NUMBER() over(order by Employee_Name desc) as Row_Number_Col,
				DENSE_RANK() over(order by Employee_Name desc) as Dense_Rank_Col
				from tbl_Employee

				---------- View
				Select * from tbl_Employee

				Alter table tbl_Employee
				Add Employee_Salary decimal(18,2)

				Create view vw_SelectEmployee as
				Select Employee_Name,Employee_Salary,
				DENSE_RANK() over(Order by Employee_Salary desc) as SrNo
				from tbl_Employee

				Select * from vw_SelectEmployee where SrNo = 1

Index :
	Index is use to improve speed and performanace of data retrieval process.
	
	-- Types of index :
		Clustered index :
			We can create only one clustered index on one table.
			If your table has PK, then by default clustered index is created.
			Store data in form of rows.

			-- Syntax :
				Create clustered index idx_name
				on tbl_Name (column_name)

			-- Example :
				Create clustered index idx_EmployeeID
				on tbl_Employee(Employee_ID)

		Non-Clustered index :
			We can create multiple index on single table
			It is working on tree structure.

			-- Syntax :
				create nonclustered index idx_name
				on tbl_name(column_name)

				create nonclustered index idx_name
				on tbl_name(column_name1,column_name2)

				-- Delete index
				drop index idx_name on tbl_name

			-- Example :
				Select * from tbl_Employee

				create nonclustered index idx_EmployeeName
				on tbl_Employee (Employee_Name)

				-- Delete index
					drop index idx_EmployeeName on tbl_Employee

		Unique index :
			Unique index used to make sure that our data is unique for that column.

			-- Syntax :
				Create unique nonclustered index idx_name
				on tbl_name (column_name)

			-- Example :
				create unique nonclustered index idx_EmployeeNameUnique
				on tbl_Employee(Employee_Name)

				Insert into tbl_Employee(Employee_Name)
				values('Darshit')

				Select * from tbl_Employee

				-- drop index idx_EmployeeNameUnique on tbl_Employee

				-- With multiple columns
				create unique nonclustered index idx_EmployeeUnique
				on tbl_Employee(Employee_Name,Employee_Address)

		Filtered Index :
			Filtered index is used to filter data with the index.
			We can filter data using where clause.

			-- Syntax :
				Create nonclustered index idx_name
				on tbl_name (column_name)
				Where expression

			-- Example :
				Create nonclustered index idx_Employee_Name
				on tbl_Employee (Employee_Name)
				Where ISActive = 0
			

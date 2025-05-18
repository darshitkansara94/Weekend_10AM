Identity Key / Incremental Key :
	Identity key is use to store auto increment number in column.
	It is applied on table.
	Type of identity key column is always int.
	We dont need to use identity keu column in insert statement.

	-- Syntax :
		Identity(1,1)

	-- Example :
		Create table tbl_Employee
		(
			Employee_Id int primary key identity(1,1),
			Employee_Name nvarchar(100),
			Employee_Salary decimal(18,2),
			Employee_Age int
		)

		Insert into tbl_Employee(Employee_Name,Employee_Salary,Employee_Age)
		values('A',25000,21)

		Select * from tbl_Employee

		Delete from tbl_Employee where Employee_Id = 2
	
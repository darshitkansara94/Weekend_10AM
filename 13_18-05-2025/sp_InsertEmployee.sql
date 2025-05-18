-- Select * from tbl_Employee

Alter procedure sp_InsertEmployee
(
	-- Param
	@Employee_Id int,
	@Employee_Name nvarchar(100),
	@Manager_Id int = null,
	@Employee_Salary decimal(18,2),
	@Employee_Age int = null
)
As
Begin
	Insert into tbl_Employee(Employee_Id,Employee_Name,Manager_Id,Employee_Salary,Employee_Age)
	values(@Employee_Id,@Employee_Name,@Manager_Id,@Employee_Salary,@Employee_Age)

	Select Employee_Id,Employee_Name,Manager_Id,Employee_Salary,Employee_Age
	from tbl_Employee
	Where Employee_Id = @Employee_Id
End
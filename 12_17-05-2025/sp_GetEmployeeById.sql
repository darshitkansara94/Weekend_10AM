Alter procedure sp_GetEmployeeById
(
	-- Param
	@Employee_Id int  --Hitachi
)
As
Begin
	-- SQL Statement
	print(@Employee_Id)

	Select Employee_Id,Employee_Name,Employee_Age 
		from tbl_Employee Where Employee_Id = @Employee_Id
End
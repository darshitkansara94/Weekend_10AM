Alter procedure sp_GetEmployees
As
Begin
	Select Employee_Id,Employee_Name,Employee_Age 
		from tbl_Employee
End
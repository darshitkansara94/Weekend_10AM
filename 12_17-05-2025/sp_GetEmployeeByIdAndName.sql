Create procedure sp_GetEmployeeByIdAndName
(
	@Employee_Id  int,
	@Employee_Name nvarchar(100)
)
As
Begin
	Select Employee_Id,Employee_Name,Employee_Age 
		from tbl_Employee Where 
			Employee_Id = @Employee_Id And Employee_Name = @Employee_Name
End
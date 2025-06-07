CTE :
	CTE = COmmon Table Expression
	CTE create runtime virtual table and destory that table after execution is completed.
	We can use CTE into SP.
	CTE is always start with the keyword 'With'.

	Partition By :
		Provide Sequential number with the same value.

	-- Syntax :
		With cte_name as
		(
			SQL statement
		)

		Select * from cte_Name

	-- Example :
		Select * from tbl_Employee

		With cte_SelectEmployee as
		(
			Select Employee_Name,Employee_DOB,Employee_Address,Employee_Salary 
			from tbl_Employee
		)

		Select Employee_name,Employee_DOB from cte_SelectEmployee

		-- Get nth rank of salary

		With cte_EmployeeSalary as
		(
			Select Employee_Name,Employee_Address,Employee_Salary,
			Dense_Rank() over(order by Employee_Salary desc) as SrNo
			from tbl_Employee
		)

		Select * from cte_EmployeeSalary where SrNo = 3

		--- Delete duplicate data from table
		Select * from tbl_Employee

		--Insert into tbl_Employee(Employee_Name,Employee_Address,Employee_DOB,Employee_Salary)
		--values('Darshit','Ahmedabad',GETDATE(),'65000'),('Nikhil','Surat',GETDATE(),69000)

		With cte_DeleteDUplicateRecord as
		(
			Select Employee_Name,Employee_Address,Employee_DOB,Employee_Salary,
			ROW_NUMBER() over(partition by Employee_Name order by Employee_Name desc) srNo
			from tbl_Employee
		)

		delete from cte_DeleteDUplicateRecord where srno > 1

		Select * from cte_DeleteDUplicateRecord where srno > 1
Store Procedure (SP):
	Store Procedure is predefined templete which perform SQL statement.
	We can save SP into DB by executing.
	Use of SP is to avoid duplication of code and code reusability.
	We can perform multiple SQL statement into single SP.
	We can access SP by its name.
	SP name should be start with 'sp_'

	-- Parameter :
		Parameter is used to store a value at SP level.
		Parameter is also used to get value from application and use that 
		value in SP

	-- Syntax :
		-- Default SP
		Create procedure sp_name
		As
		Begin
			-- SQl Statement (Insert / Update / Delete / Select)
		End

		-- Parameterized SP
		Create procedure sp_name
		(
			-- Parameter
		)
		As
		Begin
			-- SQl Statement (Insert / Update / Delete / Select)
		End

	-- Execution of SP
		--Form1
		exec sp_GetEmployees

		--Form2
		exec sp_GetEmployees

		--Form3
		exec sp_GetEmployees

		exec sp_GetEmployeeById 10

		exec sp_GetEmployeeByIdAndName 1,'C'
Conditions :
	Condition is use when we need to execute code based on previous output or based on user
		input.

	-- Types of condition
		If..else :
			If condition is use to exuecte wither If block of code or else block of code.
			Negative code should be in else part.
			Condition : Condition is always retrun a boolean value. Which is either true or false.
				Based on this  value our condition is execute.
			If condition is true then if statement is executed.
			If condition is false then else statement is executed.
			We can not use this condition inside select statement but we can implement select
				statement inside this condition.

			-- Syntax :
				If (condition)
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				If (5 = 6)
				Begin
					Print('Values are equal')
				End
				Else
				Begin
					Print('Values are not equal')
				End

				-- Error Sentence
				Select If (5 = 6) Begin Print('Values are equal') End 
					else Begin Print('Values are not equal') End

				If (5 = 5)
				Begin
					Select * from tbl_Employee
				End
				Else
				Begin
					Print('Values are not equal')
				End

				------------ Using exists
				Select * from tbl_Employee

				Declare @Employee_Id int = 5

				If exists (Select Employee_Id from tbl_Employee Where Employee_Id = @Employee_Id)
				Begin
					Update tbl_Employee set
						Employee_Name = 'Darshit'
					Where Employee_Id = @Employee_Id
				End
				Else
				Begin
					Insert into tbl_Employee(Employee_Name)
					values('Darshit')
				End

				--------------- Using not exists
				Declare @Employee_Id int = 3

				If not exists (Select Employee_Id from tbl_Employee Where Employee_Id = @Employee_Id)
				Begin
					Insert into tbl_Employee(Employee_Name)
					values('Jal')
				End
				Else
				Begin
					Update tbl_Employee set
						Employee_Name = 'Jal'
					Where Employee_Id = @Employee_Id
				End

		If..else if..else
		Case condition
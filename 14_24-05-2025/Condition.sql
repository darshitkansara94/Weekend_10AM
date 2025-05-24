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
			We can write multiple conditions.
			It is similar to If..else but the difference is condition is check on multiple levels.

			-- Syntax :
				If (condition)
				Begin
					-- SQL statement
				End
				Else if (condition)
				Begin
					-- SQL statement
				End
				Else if (condition)
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				Declare @Num1 as int = 5
				Declare @Num2 as int = null

				If(@Num1 = @Num2)
				Begin
					print('Numbers are equal')
				End
				Else if (@Num1 > @Num2)
				Begin
					print('Number1 is greater than Number2')
				End
				Else if (@Num1 < @Num2)
				Begin
					print('Number1 is less than Number2')
				End
				Else
				Begin
					print('Number is invalid')
				End

				---------------------------------------------------
				Declare @Num1 as int = 5
				Declare @Num2 as int = 5

				If(@Num1 = @Num2 And @Num1 > @Num2)
				Begin
					print('Number1 is equal or greater than Number2')
				End
				Else if(@Num1 = @Num2 and @Num1 < @Num2)
				Begin
					print('Number1 is equal or less than Number2')
				End
				Else
				Begin
					print('Invalid numbers')
				End

				----------------------------------------------------
				Declare @Num1 as int = 5
				Declare @Num2 as int = 5

				If(@Num1 = @Num2 OR @Num1 > @Num2)
				Begin
					print('Number1 is equal or greater than Number2')
				End
				Else if(@Num1 = @Num2 OR @Num1 < @Num2)
				Begin
					print('Number1 is equal or less than Number2')
				End
				Else
				Begin
					print('Invalid numbers')
				End

		Case condition :
			Case condition working algorith is same as if..else / if..else if..else.
			We can implement case condition inside select statement.
			Case condition return output in table form.

			-- Syntax :
				Select case	
					when condition Then 'Output'
					Else 'output' End as column_name

				-- Multiple condition
				Select Case
					When condition Then 'Output'
					When condition Then 'Output'
					When condition Then 'Output'
					Else 'Output' End as column_name

			-- Example :
				Declare @Num1 as int = 5
				Declare @Num2 as int = 5

				Select Case
					When @Num1 = @Num2 Then 'Both numbers are equal'
					Else 'Both Numbers are not equal' End as Comparision

				-- Multiple condition
				Declare @Num1 as int = null
				Declare @Num2 as int = 6

				Select Case	
					When @Num1 = @Num2 Then 'Both numbers are equal'
					When @Num1 > @Num2 Then 'Number1 is greater than Number2'
					When @Num1 < @Num2 Then 'Number1 is less than Number2'
					Else 'Invalid Number' End as Comarision



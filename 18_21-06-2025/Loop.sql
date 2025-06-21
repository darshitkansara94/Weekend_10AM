Loop :
	Loop is iterative code.
	Which perform until the condition is false.
	Loop always return boolean value either true or false.
	If value is true then loop will continue
	else debugger will come out of loop.
	
	-- Syntax :
		While (condition)
		Begin
			-- Code
		End

	-- Example :
		While (1 = 1)
		Begin
			Print('condition is true')
		End

		-- Initialization
		Declare @val1 as int
		-- Declaration
		Set @val1 = 2

		-- Initailize with Declaration
		Declare @val2 as int = 5

		While (@val1 < @val2)
		Begin
			Print(@val1)

			Set @val1 = @val1 + 1
		End
		-- Iteration
		1. Val1 = 2 & Val2 = 5
			Print(2)
			2 = 2 + 1 = 3 -- Val1

		2. Val1 = 3 & Val2 = 5
			Print(3)
			3 = 3 + 1 = 4 -- Val1

		3. Val1 = 4 & Val2 = 5
			Print(4)
			4 = 4 + 1 = 5 -- Val1

		4. Val1 = 5 & Val2 = 5 -- False

		-- Continue
			Declare @val1 as int = 2
			Declare @val2 as int = 5

			While (@val1 < @val2)
			Begin
				If (@val1 = 3)
				Begin
					Set @val1 = @val1 + 1
					continue
				End

				Print(@val1)

				Set @val1 = @val1 + 1
			End



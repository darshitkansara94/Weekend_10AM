Operator :
	Operator is use to filter data based on condition.


	Types of Operator :
		Comparision Operator :
			Equal to (=) :	
				Equal to operator used to get a matching data from left hand side.
				It fllows LHS = RHS.

				-- Syntax :
					Select column1,column2...columnN from tbl_name
					Where column_name = 'value'

				-- Example :
					use Amazon_Database

					Select * from tbl_RegistrationMaster
					where Registration_FirstName =  'abc'

					Select * from tbl_RegistrationMaster
					Where Registration_MobileNo = 1234567890

			Not Equal to (!=) :
				Not equal to return data opposite to equal to operator.

				-- Syntax :
					Select column1, column2, column3...columnN
					from tbl_Name
					Where columName != 'value'

				-- Example :
					Select * from tbl_RegistrationMaster
					Where Registration_FirstName != 'abc'

					Select * from tbl_RegistrationMaster
					Where Registration_FirstName <> 'abc'

			Greater than (>) :
				Return value which is right hand side.
				Compare a value LHS > RHS.

				-- Syntax :
					Select column1,column2..columN
					from tbl_Name
					Where columnName > number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id > 2

			Greater than Equal to (>=) :
				Return a data which is greater than and equal to.

				-- Syntax :
					Select column1,colum2..columnN from tbl_Name
					Where columnName >= number

				-- Example :
					Select * from tbl_RegistrationMaster
					Where Registration_Id >= 6

					Select * from tbl_RegistrationMaster
					Where Registration_Id > 5


			Less than (<):
				return Left side value is smaller than right side value.

				-- Syntax :
					Select column1, column2...columnN
					from tbl_Name
					where columnName < number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id < 2

			Less than Equal to (<=) :
				Return equal value or less than value.

				-- Syntax :
					Select column1, column2...columnN
					from tbl_Name
					where columnName <= number

				-- Example :
					Select * from tbl_RegistrationMaster
					where Registration_Id <= 2

					Select * from tbl_RegistrationMaster
					where Registration_Id < 2
		Logical Operator :
			We need to use logical operator when we need to apply multiple condition
			or define searching criteria more accurate.

			Types of Logical Operator :
				And :
					And operator return value if all the conditions are true.
					We can create n no of conditions.

					-- Syntax :
						Select column1, column2.. columnN from tbl_Name
						Where column_name = 'value1' And column_Name = 'value2'

					-- Example :
						Select * from tbl_RegistrationMaster
						Where Registration_Id = 2 And Registration_FirstName = 'abc'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_FirstName = 'abc'
							And Registration_LastName = 'xyz'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_FirstName = 'abc'
							And Registration_LastName = 'xy'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							And Registration_Id = 5
				Or :
					If any condition is true then query return data.
					We can apply n number of conditions.

					-- Syntax :
						Select column1, column2.. columnN from tbl_Name
						Where column_name = 'value1' or column_Name = 'value2'

					-- Example :
						Select * from tbl_RegistrationMaster
						Where Registration_Id = 2 or Registration_FirstName = 'ab'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							or Registration_FirstName = 'abc'
							or Registration_LastName = 'xyz'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 2 
							or Registration_FirstName = 'abc'
							or Registration_LastName = 'xy'

						Select * from tbl_RegistrationMaster
						Where 
							Registration_Id = 6
							or Registration_Id = 5

				Like :
					-- Searching Pattern :
						1. Contain
						2. Start with
						3. End with

					Like operator filter data using above pattern.
					To filter data we need to use percentage sign(%).
					If my percentage sign is after char / string in that case
						"Start With" search pattern apply.
					If my percentage sign is before char / string in that case
						"End with" search pattern is apply.
					If my percentage sign is before char /string and after char / string
						in that case "Contain" pattern is apply.

					-- Syntax :
						-- Start With pattern
							Select column1,column2..columnN from tbl_Name
							where columnName like 'char/string%'
						-- End with pattern
							Select column1,column2..columnN from tbl_Name
							where columnName like '%char/string'
						-- Contain
							Select column1,column2..columnN from tbl_Name
							where columnName like '%char/string%'

					-- Example :
						-- Start With
						Select * from tbl_RegistrationMaster

						Select * from tbl_RegistrationMaster
						where Registration_FirstName like 'r%'

						Select * from tbl_RegistrationMaster
						where Registration_FirstName like 'raj%'

						Select * from tbl_RegistrationMaster
						where Registration_FirstName like 'rah%'
							or Registration_FirstName like 'ni%'

						-- End with
							Select * from tbl_RegistrationMaster

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%i'

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%raj'

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%pti'
								-- or Registration_FirstName like 'ni%'

						-- Contain :
							Select * from tbl_RegistrationMaster

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%i%'

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%ah%'

							Select * from tbl_RegistrationMaster
							where Registration_FirstName like '%rut%'
								-- or Registration_FirstName like 'ni%'

				Between :
					Between operaor is use to find a data using range.

					-- Syntax :
						Select column1,column2..columnN from tbl_Name
						where columnName between value1 and value2

					-- Example :
						Select * from tbl_OrderMaster

						Select * from tbl_OrderMaster
						where order_Price between 40000 and 45000

						Select * from tbl_OrderMaster
						Where cast(Order_Date as date) between '2025-03-30' 
							And '2025-03-27'

				In :
					in operator allow to filter multiple value on single column by mentioning it
						one time.

					-- Syntax :
						Select column1, column2..columnN from tbl_Name
						where columnname in ('value1','value2'...'valuen')

					-- Example
						Select * from tbl_RegistrationMaster
						Where Registration_Id in (1,2,4)

						Select * from tbl_RegistrationMaster
						Where Registration_Id in (1,2,5)

						Select * from tbl_RegistrationMaster
						Where Registration_FirstName in ('Rahul','Nikhil','ABC')

				Exists :
					
				Not :
					Not operator return a value other than mentioned in condition.

					-- Syntax :
						-- Like 
							Select column1, column2..columnN from tbl_name
							where column_name not like '%value%'

						-- In
							Select column1, column2..columnN from tbl_name
							where column_name not in ('value1, value2.. valueN')

						-- Between
							Select column1, column2..columnN from tbl_name
							where column_name not between value1 and value2

					-- Example :
						Select * from tbl_RegistrationMaster
						where Registration_FirstName not like 'r%'

						Select * from tbl_RegistrationMaster
						Where Registration_Id not in (1,2,4)

						Select * from tbl_OrderMaster
						where order_Price not between 40000 and 45000

		Arithmetic Operator :
			Arithmetic operator is use to do mathemetical caluclation.

			Types of Arithemtic Operator :
				Addition (+) :
					TO use addition of numbers.

					-- Example :
						Select 2 + 2 as Addition

						Select Order_Price + Order_Quantity as Addition
						from tbl_OrderMaster


				Substraction (-) :
					Substraction of two numbers

					-- Example :
						Select 10 - 5 as Substraction
				Division (/) : 
					Divide number.

					-- Example :
						Select 10 / 5 as Division

						Print(10/5)

						Select 10/0 as Division

				Multiply (*) :
					Multiply of two numbers.

					-- Example :
						Select Order_Price,Order_Quantity,Order_Price * Order_Quantity as Multiply 
						from tbl_OrderMaster

				Modulo (%) : 
					Select 10 % 2 as Modulo

					Select 13 % 2 as Modulo

			Select * from tbl_OrderMaster

			Update tbl_Name set 
				columnName = new value

			Update tbl_OrderMaster set
				Order_Total = Order_Price * Order_Quantity

			Update tbl_OrderMaster set
				Order_Price = '43000' , Order_Total = 43000 * Order_Quantity
			Where Order_Id = 2	
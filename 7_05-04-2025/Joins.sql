Joins :
	Joins is use to connect same of different table and return a output as a single table.

	Types of Joins :
		Inner join :
			Inner join return common data from both the table.
			We can apply multiple inner join in single SQL statement.

			-- Syntax :
				Select * from tbl_A 
				Inner join tbl_B on tbl_A = tbl_B

			-- Example :
				Select * from tbl_RegistrationMaster
				Select * from tbl_OrderMaster

				Alter table tbl_OrderMaster
				Add Registration_Id int

				Update tbl_OrderMaster set Registration_Id = 4
				where Order_Id in (4)

				Select * from tbl_RegistrationMaster
				Select * from tbl_OrderMaster

				Select tbl_OrderMaster.Registration_Id,
				tbl_RegistrationMaster.Registration_Id,Registration_FirstName,
				Registration_LastName,
				Order_Name,Order_Price
				from tbl_RegistrationMaster
				Inner join tbl_OrderMaster on
					tbl_OrderMaster.Registration_Id = tbl_RegistrationMaster.Registration_Id

				Select tbl_OrderMaster.Registration_Id,
				tbl_RegistrationMaster.Registration_Id,Registration_FirstName,
				Registration_LastName,
				Order_Name,Order_Price,
				Order_Price * Order_Quantity as OrderTotal
				from tbl_RegistrationMaster
				Inner join tbl_OrderMaster on
					tbl_OrderMaster.Registration_Id = tbl_RegistrationMaster.Registration_Id

				Select OM.Registration_Id,
				RM.Registration_Id,Registration_FirstName,
				RM.Registration_LastName,
				OM.Order_Name,OM.Order_Price,
				Om.Order_Price * Om.Order_Quantity as OrderTotal
				from tbl_RegistrationMaster as RM
				Inner join tbl_OrderMaster as OM on
					OM.Registration_Id = RM.Registration_Id

		Left Join :
			Left join returns all data from left table and matching data from right table.
			i.e .
				Select * from 
					tbl_RegistrationMaster as RM -- Left Table
				Inner join 
					tbl_OrderMaster as OM on -- Right Table
						OM.Registration_Id = RM.Registration_Id
			Here, tbl_RegistrationMaster comes first in select statement so
				that table is consider as Left table
			After that immediately tbl_OrderMaster comes so that table is consider 
				as Right table.

			-- Syntax :
				Select * from tbl_A
				Left join tbl_B on tbl_A = tbl_B

			-- Example :
				Select * from tbl_RegistrationMaster
				Select * from tbl_OrderMaster
				
				Select 
					tbl_RegistrationMaster.Registration_Id,Registration_FirstName,
					Registration_LastName,tbl_OrderMaster.Registration_Id,
					Order_Name,Order_Price 
				from tbl_RegistrationMaster -- Left table
				Left join 
					tbl_OrderMaster -- Right table
				On
					tbl_RegistrationMaster.Registration_Id = tbl_OrderMaster.Registration_Id				


		Right Join :
			Right join return all the data from right table and matching data from left table.
			i.e .
				Select * from 
					tbl_RegistrationMaster as RM -- Left Table
				Inner join 
					tbl_OrderMaster as OM on -- Right Table
						OM.Registration_Id = RM.Registration_Id
			Here, tbl_RegistrationMaster comes first in select statement so
				that table is consider as Left table
			After that immediately tbl_OrderMaster comes so that table is consider 
				as Right table.

			-- Syntax :
				Select * from tbl_A -- Left table
				Right join tbl_B -- Right table
				on tbl_A.column = tbl_B.column				

			-- Example :
				Select 
					tbl_RegistrationMaster.Registration_Id,Registration_FirstName,
					Registration_LastName,tbl_OrderMaster.Registration_Id,
					Order_Name,Order_Price 
				from tbl_RegistrationMaster -- Left table
				Right join 
					tbl_OrderMaster -- Right table
				On
					tbl_RegistrationMaster.Registration_Id = tbl_OrderMaster.Registration_Id				

		Self Join :
			Self join is apply join with itself.
			Here aliasname is mandatory.

			-- Syntax :
				Select * from tbl_A A1, tbl_A A2
				where A1.column = A2.column

			-- Example :
				Create Table tbl_Employee
				(
					Employee_Id int,
					Employee_Name nvarchar(50),
					Manager_Id int,
					Employee_Salary int
				)

				Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Salary,Manager_Id)
				values(1,'A',25000,2),
					(2,'B',30000,2),
					(3,'C',40000,5),
					(4,'D',50000,3),
					(5,'E',60000,6),
					(6,'F',70000,1)

				Select * from tbl_Employee

				Select E1.Employee_Name as Employee_Name ,
					E2.Employee_Name as Manager_Name,E1.Employee_Salary,
					E2.Employee_Salary as Manager_Salary
					from tbl_Employee E1, tbl_Employee E2
				Where E1.Manager_Id = E2.Employee_Id				
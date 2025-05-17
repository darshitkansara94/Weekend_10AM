Constraints :
	Constraint is use to set a rule / policy on the table.

	-- Types of constraint :
		Primary Key (PK) : 
			Primary key is use to add unique data and it is not allow to add duplicate data 
				into column.
			PK is use on into the table column.
			We can create only one Pk into a single table.
			When PK is create, Clustered index will create itself.
			Into the same DB we can not create PK with the same name.

			-- Syntax :
				-- When create new table
				create table tbl_name
				(
					column1 datatype primary key,
					column2 datatype,
					column3 datatype,
					columnN datatype					
				)

				-- Add PK in existing table
				Alter table tbl_name
				Add constraint cn_name primary key (column_name)

				-- Drop constraint
				Alter table tbl_name
				Drop constraint cn_name

			-- Example :
				create table tbl_A
				(
					A_Id int,
					A_Name nvarchar(30),
					A_Address nvarchar(100)
				)

				-- Add PK into Existing table
				Alter table tbl_A
				Add constraint pk_AId primary key(A_ID)

				Alter table tbl_A
				Alter column A_Id int not null


		Foreign Key (FK) :
			Primary of parent table is reference to the child table is called as
				foreign key.
			We can create multiple FK into a single table.
			Fk name should be unique.

			-- Syntax :
				-- Create table with FK
				Select * from tbl_A -- Parent Table

				-- Child table
				Create table tbl_Name
				(
					columnName datatype,
					ColumnName datatype,
					..
					ColumnNameN datatype,
					Constraint cn_name foreign key (column_name_of_childTable)
					references parent_table(pk_parent_table)
				)

				-- Add into existing table.
				Alter table tbl_name
				Add constraint cn_name foreign key(column_name_of_childtable)
					references parent_table(pk_parent_table)

				-- Drop constraint
				Alter table tbl_name
				drop constraint cn_name


			-- Example :
				-- Parent Table
				Create table tbl_Category
				(
					Category_Id int primary key,
					Category_Name nvarchar(20),
					Created_Date datetime
				)

				-- Child Table
				Create table tbl_SubCategory
				(
					Subcategory_Id int primary key,
					Category_Id int,
					Subcategory_Name nvarchar(100),
					Subcategry_Price decimal(18,2)
				)

				

				Select * from tbl_Category
				Select * from tbl_SubCategory

				Alter table tbl_Subcategory
				Add constraint fk_CategoryId foreign key (Category_Id)
					references tbl_Category(Category_Id)

				Insert into tbl_Category(Category_Id,Category_Name)
				values(1,'Mobile')

				Insert into tbl_SubCategory(Subcategory_Id,Category_Id,Subcategory_Name,
					Subcategry_Price)
				values(3,1,'Samsung',50000)

				Delete from tbl_SubCategory where Subcategory_Id = 3

				Delete from tbl_Category where Category_Id = 1

		default :
			Default constraint use to insert some default value instead of null.
			First preference is given to the the user assigned value.
			We can create multiple defaulr constraint on single table.

			-- Syntax :
				-- Create new table
				Create table tbl_name
				(
					columnName datatype,
					ColumnName datatype default 'value',
					..
					ColumnNameN datatype
				)

				-- Add into existing table
				Alter table tbl_name
				Add constraint cn_name default 'value' for columnname

				-- Drop existing constraint
				Alter table tbl_name
				Drop constraint cn_name

			-- Example :
				-- Create with existing
				Create table tbl_SubCategory
				(
					Subcategory_Id int primary key,
					Category_Id int,
					Subcategory_Name nvarchar(100) default 'Unknown',
					Subcategry_Price decimal(18,2) default 0
				)

				-- Add into existing table
				Alter table tbl_Subcategory
				Add constraint df_Price default 0 for Subcategry_Price

				Insert into tbl_SubCategory(Subcategory_Id,Category_Id,Subcategory_Name)
				values(6,1,'Vivo')

				Select * from tbl_SubCategory

				Alter table tbl_Subcategory
				Drop constraint df_Price
		check :
			Check constraint is use to set condition on the column and our data will be insterted based on
				condition.

			-- Syntax
				-- With new table
				create table tbl_name
				(
					column_name datatype,
					column_name datatype,
					column_name datatype check (expression)
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name check(expression)

			-- Example :
				select * from tbl_Employee
				
				alter table tbl_Employee
				add Employee_Age int

				-- Add constraint in existing table
				Alter table tbl_Employee
				Add constraint cn_CheckAge check(Employee_Age >= 18)
		
				Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age)
				values(7,'G',18)

				Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age)
				values(8,'H',21)

				-- Create new table
				create table tbl_User
				(
					User_Id int primary key,
					User_Name nvarchar(20),
					User_Mobile bigint check(len(User_Mobile) = 10)
				)

				Insert into tbl_User([User_Id],[User_Name],User_Mobile)
				values(1,'A',1234567890)

				Insert into tbl_User([User_Id],[User_Name],User_Mobile)
				values(2,'A',8971592749)

		unique :
			Unique constraint make sure that unique data will be save in column.
			If we have already duplicate data available into that column then unique constraint is not 
				create.

			-- Syntax :
				-- With new table
				create table tbl_name
				(
					column_name datatype,
					column_name datatype,
					column_name datatype unique
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				Alter table tbl_User
				Add constraint cn_UserName unique([User_Name])

				Select * from tbl_User

				Update tbl_User set User_Name = 'A' where User_Id = 2
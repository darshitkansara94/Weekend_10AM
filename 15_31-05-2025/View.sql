View :
	View is use to create a virtual table.
	Virtual table is something that is not available in database but store in 
		memory.
	We can not add or modify the columns in view like a normal table.
	View is a resuable code.

	-- Syntax :
		Create view view_name as
		-- Select statement

	-- Example :
		Insert into tbl_CategoryMaster(Category_Name)
		values('Watch')

		Create view vw_SelectCategory as
		Select Category_Id,Category_Name,Modified_Date,Created_Date,IsDeleted 
		from tbl_CategoryMaster

		Select * from vw_SelectCategory

		Create view vw_SelectCategoryAndSubcategory as
		Select CM.Category_Id as CategoryId,CM.Category_Name,CM.Modified_Date,CM.Created_Date,
		CM.IsDeleted,
		SCM.Category_Id,SCM.Subcategory_Name,SCM.Subcategory_Id,SCM.SubCategory_Price,
		SCM.SubCategory_Quantity
		from tbl_CategoryMaster CM
		Inner join tbl_SubcategoryMaster SCM on
			SCM.Category_Id = CM.Category_Id

		Select Category_Name,Subcategory_Name,SubCategory_Price,SubCategory_Quantity,
		Order_Date,Order_Qty,Order_Amt
		from vw_SelectCategoryAndSubcategory vw	
		Inner join tbl_OrderMaster OM on vw.Subcategory_Id = OM.Subcategory_Id

		--- Without View

		Select CM.Category_Id as CategoryId,CM.Category_Name,CM.Modified_Date,CM.Created_Date,
		CM.IsDeleted,
		SCM.Category_Id,SCM.Subcategory_Name,SCM.Subcategory_Id,SCM.SubCategory_Price,
		SCM.SubCategory_Quantity
		from tbl_CategoryMaster CM
		Inner join tbl_SubcategoryMaster SCM on
			SCM.Category_Id = CM.Category_Id
		Inner join tbl_OrderMaster OM on SCM.Subcategory_Id = OM.Subcategory_Id

		Select * from tbl_OrderMaster
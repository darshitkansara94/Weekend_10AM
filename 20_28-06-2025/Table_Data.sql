use ECommerce_DB

truncate table tbl_CategoryMaster
truncate table tbl_OrderMaster

select * from tbl_CategoryMaster
select * from tbl_OrderMaster

Alter table tbl_OrderMaster
add Category_Id int

insert into tbl_CategoryMaster(Category_Name)
values('Iphone'),('Samsung'),('Vivo'),('Oppo'),('MI')

insert into tbl_OrderMaster(Category_id)
values(1),(2),(1)

Select * from tbl_OrderMaster
inner join tbl_CategoryMaster
	on tbl_CategoryMaster.Category_Id = tbl_OrderMaster.Category_Id

select * from tbl_CategoryMaster
select * from tbl_OrderMaster

Select * from tbl_CategoryMaster where Category_Id in (1,2,3)

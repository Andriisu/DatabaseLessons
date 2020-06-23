-- Task 1
create procedure HomePro.GetAllCustomers_Andrey
as
begin
	select CustomerId, FirstName, LastName, Email
	from HomePro.Customers
end
go
--Task 2
create procedure HomePro.GetCustomersNoSchedule_Andrey
as
begin
	select c.CustomerId, c.FirstName, c.LastName, c.Email, c.Phone, c.ZipCode, c.Age
	from HomePro.Customers c
		left join HomePro.Schedules s
			on c.CustomerId = s.CustomerId
	where s.CustomerId is null
end
go
--task 3
create procedure HomePro.GetCustomerByAge_Andrey
	@age int 
as
begin
	select * 
	from HomePro.Customers
	where Age > @age 
end
go
--task 4
create procedure HomePro.GetCustomerByAge_Andrey
	@age int 
as
begin
	if ( @Age<10 or @age> 100)
	begin
		raiserror('parameter Age is incorrect',16,10)
		return 
	end

	select * 
	from HomePro.Customers
	where Age > @age 
end
go 
--Task 5
create procedure HomePro.GetCustomersNoScheduleByDate_Andrey
	@DateNedeed datetime
as
begin
	select c.CustomerId, c.FirstName, c.LastName, c.Email, c.Phone, c.ZipCode, c.Age
	from HomePro.Customers c
		left join HomePro.Schedules s
			on c.CustomerId = s.CustomerId
	where s.CustomerId is null
		and s.DateNeeded = @DateNedeed
end
go

--Task 6
CREATE PROCEDURE HomePro.GetExtimationsWithPercentage_Andrey
AS
BEGIN 
	declare @TotalEstimation numeric(10,2) 

	select @TotalEstimation = sum (Estimation) from HomePro.Quotes

	select Q.Estimation, Q.Estimation/@TotalEstimation * 100 as PercentOfTotal,  @TotalEstimation as TotalEstimation
	from HomePro.Customers C
		join HomePro.Quotes Q 
		on c.CustomerId = Q.CustomerId
END
--
exec HomePro.GetExtimationsWithPercentage_Andrey

exec sp_helptext [HomePro.GetExtimationsWithPercentage_Andrey]
go

declare @TotalEstimation numeric(10,2) 

select @TotalEstimation = sum (Estimation) from HomePro.Quotes

select Q.Estimation, Q.Estimation/@TotalEstimation * 100 as PercentOfTotal,  @TotalEstimation as TotalEstimation
from HomePro.Customers C
	join HomePro.Quotes Q 
	on c.CustomerId = Q.CustomerId


--Task 7  HomePro.GetEstimationsWithDiscountByAge
declare @Discount numeric(10,2)  = 0.10
declare @EligibleAge int = 30

select 
	C.CustomerId,C.FirstName, C.LastName, c.Age,  Q.Estimation, 
	CASE WHEN c.Age > @EligibleAge THEN @Discount ELSE 0 END AS Discount,
	CASE WHEN C.Age > @EligibleAge THEN Q.Estimation *(1 - @Discount) ELSE Q.Estimation END AS FinalEstimation

FROM HomePro.Customers C
	join HomePro.Quotes Q 
	on c.CustomerId = Q.CustomerId

go



--Task 8
declare @Discount numeric(10,2)  = 0.15
declare @EligibleAmount  numeric(10,2) = 500

select 
	C.CustomerId, C.FirstName, C.LastName, Q.Estimation, 
	case When Q.Estimation > @EligibleAmount then @Discount else 0 end as Discount,
	case When Q.Estimation > @EligibleAmount then Q.Estimation *(1- @Discount) else Q.Estimation end as FinalEstimation

from HomePro.Customers C
	join HomePro.Quotes Q 
	on c.CustomerId = Q.CustomerId



--task 9


select 
	C.CustomerId, C.FirstName, C.LastName, C.State, Q.Estimation, 
	case when C.State ='VA' then '6%' 
		 when C.State ='CA' then '10%'	
		 else '5%' end as StateTax,

	case when C.State ='VA' then Q.Estimation * 0.06 
	     when C.State ='CA' then Q.Estimation * 0.1 
		 else Q.Estimation*0.05 end as TaxAmount,


	case when C.State ='VA' then Q.Estimation * 1.06 
	     when C.State ='CA' then Q.Estimation * 1.1 
		 else Q.Estimation*1.05 end as TaxedEstimation

from HomePro.Customers C
	join HomePro.Quotes Q 
	on c.CustomerId = Q.CustomerId





select * from HomePro.Customers 
select * from Bank.Clients
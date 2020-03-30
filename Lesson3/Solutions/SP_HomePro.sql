
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

select c.ClientId, c.FirstName, c.LastName, c.Age, c.Email
	
from Bank.Clients C
	left join Bank.Accounts A 
		on c.ClientId = a.ClientId
where a.ClientId is null



--Task 4
CREATE PROCEDURE Bank.GetClientsByAge_Andrey
	@Age int
AS
BEGIN
	if (@Age < 10 or @Age > 100)
	begin 
		Raiserror ('The parameter Age is not valid ', 16,10);
		Return	
	end
 
	select ClientId, FirstName, LastName, Age 
	from Bank.Clients
	where age > @Age
END
go 

exec Bank.GetClientsByAge_Andrey @Age =10


--Task 5 
declare @TotalBalance numeric(10,2) 
select @TotalBalance = sum (Balance) from Bank.Accounts

select c.ClientId, c.FirstName, c.LastName, c.Age, c.Email,  
	A.AccountNum, A.Type, A.Balance, A.Balance/@TotalBalance * 100 as PercentOfTotal,  @TotalBalance as TotalBalance
from Bank.Clients C
	join Bank.Accounts A 
		on c.ClientId = a.ClientId

go


--Task 5 
declare @AccountType char(10)  = 'SAVING';

declare @TotalBalance numeric(10,2) 

select @TotalBalance = sum (A.Balance) 
from Bank.Accounts A
where A.Type = @AccountType

select c.ClientId, c.FirstName, c.LastName, c.Age, c.Email,  
	A.AccountNum, A.Type, A.Balance, A.Balance/@TotalBalance * 100 as PercentOfTotal,  @TotalBalance as TotalBalance
from Bank.Clients C
	join Bank.Accounts A 
		on c.ClientId = a.ClientId
where A.Type = @AccountType




--task 7
select  c.FirstName, c.LastName, c.Email,  c.State,
	A.Type, A.Balance, A.ClientId as ClientIdFrom, Ato.ClientId as ClientIdTo, t.Amount, 
	case when A.ClientId = Ato.ClientId then '0%' else '5%' end as Commition,
	case when A.ClientId = Ato.ClientId then 0 else t.Amount*0.05 end as CommitionAmount,
	case when A.ClientId = Ato.ClientId then t.Amount else t.Amount*1.05 end as FinalAmount

from Bank.Clients C
	join Bank.Accounts A 
		on c.ClientId = a.ClientId
	join Bank.Transactions T 
		on T.AccountNumFrom = A.AccountNum 
	join Bank.Accounts Ato  
			on T.AccountNumTo = Ato.AccountNum

go

--task 8
declare @AccountType char(10) = 'CHECKING';
declare @Commision numeric(10,2)  = 0.06

select  c.FirstName, c.LastName, c.Email, c.State,
	A.Type, A.Balance, t.Amount, 
	case when A.Type = @AccountType then @Commision else 0 end as Commition,
	case when A.Type = @AccountType then t.Amount*@Commision else 0 end as CommitionAmount,
	case when A.Type = @AccountType then t.Amount*(1+@Commision) else t.Amount end as FinalAmount

from Bank.Clients C
	join Bank.Accounts A 
		on c.ClientId = a.ClientId
	join Bank.Transactions T 
		on T.AccountNumFrom = A.AccountNum 

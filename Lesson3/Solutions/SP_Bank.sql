--Task 1
create procedure Bank.GetAllClients_Andrey
as
begin
	select ClientId,FirstName,LastName,Phone,Email,State,Age,Type
	from Bank.Clients
end
go
--Task 2
create procedure Bank.GetClientsNoAccount_Andrey
as
begin
	select c.ClientId, c.FirstName,c.LastName,c.Phone,c.Email,c.State,c.Age,c.Type
	from Bank.Clients C
		left join Bank.Accounts A
		on C.ClientId = a.ClientId
	where a.ClientId is null
end
go
--Task 3
create procedure Bank.GetClientsByAge_Andrey
	@AgeBegin int, @AgeEnd int 
as
begin
	select *
	from Bank.Clients C
	where Age between @AgeBegin and @AgeEnd
end
go
--Task 4
create procedure Bank.GetClientsWithNoAccount_Andrey
	@AccountType CHAR(10)
as
begin
	select *
	from Bank.Clients C
		left join Bank.Accounts A
		on C.ClientId = a.ClientId
	where a.Type != @AccountType
end
go
-- Task 5 
CREATE PROCEDURE Bank.GetAccountsWithBalances_Andrey
AS
BEGIN
	declare @TotalBalance numeric(10,2) 
	select @TotalBalance = sum (Balance) from Bank.Accounts

	select c.ClientId, c.FirstName, c.LastName, c.Age, c.Email,  
		A.AccountNum, A.Type, A.Balance, A.Balance/@TotalBalance * 100 as PercentOfTotal,  @TotalBalance as TotalBalance
	from Bank.Clients C
		join Bank.Accounts A 
			on c.ClientId = a.ClientId
end
go
--Task 6
CREATE PROCEDURE Bank.GetAccountsWithBalancesByType_Andrey 
	@AccountType CHAR(10)
AS
BEGIN
	declare @TotalBalance numeric(10,2) 
	select @TotalBalance = sum (Balance) from Bank.Accounts

	select c.ClientId, c.FirstName, c.LastName, c.Age, c.Email,  
		A.AccountNum, A.Type, A.Balance, A.Balance/@TotalBalance * 100 as PercentOfTotal,  @TotalBalance as TotalBalance
	from Bank.Clients C
		join Bank.Accounts A 
			on c.ClientId = a.ClientId
	WHERE A.Type = @AccountType
end

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

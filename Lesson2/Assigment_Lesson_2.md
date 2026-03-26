# Assigments: Lesson 2.

## Schema HomePro

### Aggregate functions

#### Homepro.Customers


1. Calculate number of customers and average customers’ age.
2. Calculate number of customers, show the age of the oldest and youngest customer, who did not subscribe on NewsLetter. 

#### Homepro.Schedules
3. Calculate the number of rows with JobType ‘Remodeling’. 
4. Calculate the count of each JobType.
5. Find the earliest and the last date when we have scheduled work.

#### Homepro.Quotes
6. Calculate Sum of Quotes for ‘Kitchen’.
7. Find the smallest Quote that bigger than $500.
8. Find the summary and average value of all estimations.

### Join Tasks
1. Find all Customers who has scheduled work after ‘2015-01-01’
2. Find customers (FirstName, LastName, Email, Phone, Description, Estimation) who has Quote’s Estimation bigger than $500. Order by Estimation.
3. Find All customers (FirstName,LastName,Email,Phone, AltPhone,QuoteId,Description, Estimation) who has a quote but did not provide AltPhone. 
Note: The column QuoteId represents data from HomePro.Quotes.Id 
4. Find All customers (FirstName,LastName,Email,Phone, AltPhone, QuoteId, Description, 5. Estimation) who has a quote within year 2016 but did not provide AltPhone.
6. Find customers that do not have any Quote.
7. Find customers that have neither Quote nor Schedule. 
8. Find customers that have Schedules, but don’t have Quote.
9. Find all customers that have Scheduled JobType = ‘Remodeling’ with Estimated quote less than 5000 and Younger than 70.   
10. Calculate sum of all quotes for clients who have NewsLetter = 1
11. Calculate sum of all quotes for clients who have Schedules before 2015-01-01
12. Calculate the Number of clients, Sum of Estimations and Average Estimation for all customers that have Scheduled JobType = ‘Remodeling’ with Estimated quote less than 5000 and Younger than 70.


## Schema Bank
### Aggregate functions
#### Bank.Clients
1. Find the age of the youngest client and average age of our clients.
2. Find average age and number of our Private clients.
3. Find the age of oldest client who lives not in New Jersey.
#### Bank.Accounts
4. Find the biggest balance.
5. Calculate the average balance by each client. 
6. Calculate the average balance and number of Accounts by each Client. 
#### Bank.Transactions
7. Find average amount of transactions
8. Find average amount and number of transactions paid by each Account.

### Join Tasks 
1. Find all clients that have ‘checking’ account (FirstName,LastName,Phone,Email,State, Age, Balance, 
AccountType) 
2. Find all clients that have ‘checking’ or ‘credit’ accounts (FirstName, LastName, Phone, Email, State, 
Age, Balance, AccountType).
3. Find all clients that have ‘checking’ and ‘credit’ accounts (FirstName, LastName, Phone, Email,
State, Age, BalanceCredit, TypeCredit, BalanceCheking, TypeCheking).
4. Calculate summary money on all accounts for ‘Private’ clients.
5. Find clients (FirstName, LastName, Phone,Email,State,Age,Amount,Status,TransactionTime) who 
have “pending” transactions. 
6. Find clients and account’s balance (FirstName,LastName,Phone,Email,State,Age,Balance,Type, 
Amount, Status, TransactionTime) who have “rejected” transactions. 
7. Find clients and Transactions (FirstName,LastName,Phone,Email,State,Age,Balance,Type, Amount, 
Status, TransactionTime) who made payment after 2015-12-31
8. Find clients and Transactions (FirstName,LastName,Phone,Email,State,Age,Balance,Type, Amount, 
Status,TransactionTime) who received money on credit account.
9. Find Accounts including Client’s name (FirstName,LastName,Phone,Email,State,Age,Balance, 
AccountType) from that payment was never done.
10. Find Account number, number of transactions and Summary of all payments for all clients older than 
20. (FirstName, LastName, AccountNumber, Transactions, SumAmount). Order by AccountNumber.
11. Show all transactions counterparts’ names with transaction information (FirstNameFrom, 
LastNameFrom, AccountTypeFrom, FirstNameTo, LastNameTo, AccountTypeTo, Amount, Status, 
TransactionTime). Order by amount
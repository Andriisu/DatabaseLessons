# Assigments: Lesson 2.

## Schema HomePro

### Aggregate functions

#### Homepro.Customers


1. Calculate number of customers and average customers’ age.
2. Calculate number of customers, show the age of the oldest and youngest customer, who did not subscribe on <b>NewsLetter</b>. 

#### Homepro.Schedules
3. Calculate the number of rows with <b>JobType='Remodeling'</b>. 
4. Calculate the count of each <b>JobType</b>.
5. Find the earliest and the last date when we have scheduled work.

#### Homepro.Quotes
6. Calculate Sum of Quotes for ‘Kitchen’.
7. Find the smallest Quote that bigger than $500.
8. Find the summary and average value of all estimations.

### Join Tasks
1. Find all Customers who has scheduled work after ‘2015-01-01’
2. Find customers (<b>FirstName, LastName, Email, Phone, Description, Estimation</b>) that have Quote’s Estimation bigger than $500. Order by Estimation.
3. Find All customers (<b>FirstName,LastName,Email,Phone, AltPhone,QuoteId,Description, Estimation</b>) who has a quote but did not provide AltPhone. 
<i>Note: The column QuoteId represents data from HomePro.Quotes.Id</i> 
4. Find All customers (<b>FirstName,LastName,Email,Phone, AltPhone, QuoteId, Description, Estimation</b>) who has a quote within year 2016 but did not provide AltPhone.
5. Find customers that do not have any Quote.
6. Find customers that have neither Quote nor Schedule. 
7. Find customers that have Schedules, but don’t have Quote.
8. Find all customers that have Scheduled JobType = ‘Remodeling’ with Estimated quote less than 5000 and Younger than 70.   
9. Calculate sum of all quotes for clients who have NewsLetter = 1
10. Calculate sum of all quotes for clients who have Schedules before 2015-01-01
11. Calculate the Number of clients, Sum of Estimations and Average Estimation for all customers that have Scheduled JobType = ‘Remodeling’ with Estimated quote less than 5000 and Younger than 70.


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
5. Find clients (<b>FirstName, LastName, Phone,Email,State,Age,Amount,Status,TransactionTime</b>) who 
have “pending” transactions. 
6. Find clients and account’s balance (<b>FirstName,LastName,Phone,Email,State,Age,Balance,Type, 
Amount, Status, TransactionTime</b>) who have “rejected” transactions. 
7. Find clients and Transactions (<b>FirstName,LastName,Phone,Email,State,Age,Balance,Type, Amount, 
Status, TransactionTime</b>) who made payment after 2015-12-31
8. Find clients and Transactions (<b>FirstName,LastName,Phone,Email,State,Age,Balance,Type, Amount, 
Status,TransactionTime</b>) who received money on credit account.
9. Find Accounts including Client’s name (<b>FirstName,LastName,Phone,Email,State,Age,Balance, 
AccountType</b>) from that payment was never done.
10. Find Account number, number of transactions and Summary of all payments for all clients older than 20 years. (<b>FirstName, LastName, AccountNumber, Transactions, SumAmount</b>). Order by AccountNumber.
11. Show all transactions counterparts’ names with transaction information (<b>FirstNameFrom, LastNameFrom, AccountTypeFrom, FirstNameTo, LastNameTo, AccountTypeTo, Amount, Status, TransactionTime</b>). 
Order by amount.
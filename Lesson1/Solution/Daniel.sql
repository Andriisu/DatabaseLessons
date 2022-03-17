1.
SELECT * FROM Bank.Clients;

2.
SELECT * FROM Bank.Clients
WHERE LastName = 'Smith';

3.
SELECT FirstName, LastName, Phone, State FROM Bank.Clients
WHERE State = 'VA';

4.
SELECT FirstName, LastName, Phone, Email FROM Bank.Clients
WHERE EMAIL LIKE '%@gmail.com';

5.
SELECT * FROM Bank.Clients
WHERE LastName LIKE 'M%';

6.
SELECT * FROM Bank.Clients
WHERE LastName LIKE 'M%S';


7.
SELECT FirstName, LastName, Phone FROM Bank.Clients
WHERE Type = 'Business';

8.
SELECT * FROM Bank.Clients
WHERE Age < 20;

9.
SELECT * FROM Bank.Clients
WHERE Age between 20 and 40;

10.
SELECT MIN(AGE) AS youngest_age, AVG(Age) AS avg_age FROM Bank.Clients

11.
SELECT AVG(Age) AS avg_age, COUNT(*) AS #_of_clients FROM Bank.Clients

12.
SELECT MAX(Age) AS max_age_not_NJ FROM Bank.Clients
WHERE State != 'NJ';


Accounts
1.
SELECT * FROM Bank.Accounts
WHERE TYPE = 'CREDIT';

2.
SELECT * FROM Bank.Accounts
WHERE TYPE = 'CHECKING' AND Balance > 2000;

3.
SELECT MAX(BALANCE) AS max_balance FROM Bank.Accounts;

4.
SELECT AVG(Balance) AS Avg_per_client FROM Bank.Accounts;

5.
-- A client's average balance and their total number of accounts
SELECT ClientId, AVG(Balance) AS avg_balance, COUNT(AccountNum) / COUNT (DISTINCT ClientId) AS #_accounts FROM Bank.Accounts
GROUP BY ClientId;


Transaction
1.
SELECT * FROM Bank.Transactions
WHERE Status = 'Pending';

2.
SELECT * FROM Bank.Transactions
WHERE Status = 'Commited' AND TransactionTime > '2016-01-01';

3.
SELECT * FROM Bank.Transactions
WHERE TransactionTime BETWEEN '2016-01-01' AND '2016-12-31';

4.
SELECT AVG(Amount) AS avg_transaction_amount FROM Bank.Transactions;

5.
SELECT AccountNumFrom, AVG(Amount) AS avg_transaction_amount, COUNT(TransactionId) AS #_of_transactions FROM Bank.Transactions
GROUP BY AccountNumFrom;

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
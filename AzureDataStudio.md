# Download and install Azure Data Studio
Go to URL: https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15
<br>
Clink on the link highlighted below to download installation that suits your operation system.

![./docs/ADS_Download.png](./docs/ADS_Download.png)

# First Login

As soon as installation finished, you should be able to see the icon like this one. 
<br>
![./docs/ADS_Icon.png](./docs/ADS_Icon.png)
<br>
Go and launch Azure Data Studio.

As soon as ADS started you will be prompted to fill login information. 
If not Push the button <b>“New connection”</b>
![./docs/ADS_Connection.png](./docs/ADS_Connection.png)

Please fill the fields as depicted at picture below.
- Server Name: <b>homepro.database.windows.net</b>
- Authentication Type: <b>SQL Login</b>
- Login: <b>HomeProUser</b>
- Password: <b>qwerty_123</b>
- Database Name: <b>main</b>

Push the button <b>“Connect”</b>.
![./docs/ADS_Login.png](./docs/ADS_Login.png)

## Possible Firewall connection issue.
If you see the message like at the picture below, then you have your IP address blocked by security firewall. 
- Send "My IP address" to via email andrew.a4100@gmail.com. (4 numbers separated by dots).
- As soon as I added your IP address to the whitelist I will respond you.
- After that you will be able to connect to database.

![./docs/Firewall.png](./docs/Firewall.png)


# Execute SQL queries.
Having successful login you must see picture like below. Push the button “New query”.


![./docs/ADS_NewQuery.png](./docs/ADS_NewQuery.png)

Type SQL query like below and the button <b>“Execute”</b>:
	
<b>select * from HomePro.Customers</b>

You should see picture like this.

![./docs/ADS_RunQuery.png](./docs/ADS_RunQuery.png)

Congratulations! You have successfully connected to Database, executed SQL query and can proceed with SQL assignments. 
- [Database Schema HomePro](./Lesson1/Schema%20HomePro.pdf)
- [Database Schema Bank](./Lesson1/Schema%20Bank.pdf)

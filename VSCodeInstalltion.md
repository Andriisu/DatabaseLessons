# Visual Studio Code Installation and Configuration

## 1. Install VS Code 
<br>
Download and install <b>Visual Studio Code</b>: https://code.visualstudio.com/download

## 2. Install the extention SQL Server "mssql"
<br>
As soon as installation finished.

- Start VS Code 
- Go to Extention Marketplace at the tool box
- Find extention SQL Server. Type: <b>mssql</b>
- Push <b>Install</b>
 
![./docs/2_VSCodeExtention.png](./docs/2_VSCodeExtention.png)


## 3. Connect to Database 
<br>
As soon as extention <b>mssql</b> installed.

- Go to SQL Server toolbox (Ctrl+Alt+D)
- Click <b>+ Add Connection</b>
- Fill the connection information as follows.


| Field        | Value           |
| ------------- | :-------------|
| Profile Name      | <b>DatabaseHomePro</b> |
| Server name       | <b>homepro.database.windows.net</b>|
| Trust server certificate | - [X]|
| Authentication Type | <b>SQL Login</b>|
| User name | <b>HomeProUser</b>|
| Password | <b>qwerty_123</b>|
| Save Password| <b>True</b> |
| Database Name| <b>main</b>|

Push <b>Connect</b>
![./docs/3_VSCodeSQLConnection.png](./docs/3_VSCodeSQLConnection.png)


## 4 Possible Firewall connection issue.
<br>
If you see the message like at the picture below, then you have your IP address blocked by security firewall. 

- Send "My IP address" to via email andrew.a4100@gmail.com. (4 numbers separated by dots).
- As soon as I added your IP address to the whitelist I will respond you.
- After that you will be able to connect to database.

![./docs/Firewall.png](./docs/Firewall.png)


## 5 Execute SQL queries.
<br>
Having successful login you must see picture like below. 

- Go to <b>SQL Server</b> 
- Click on connection and <b>DatabaseHomePro</b> chose <b>New query</b>.
- Type SQL query like below and the button <b>“Execute”</b>:
	
<b>select * from HomePro.Customers</b>

![./docs/5_VSCode_Query.png](./docs/5_VSCode_Query.png)

Congratulations! You have successfully connected to Database, executed SQL query and can proceed with SQL assignments. 
- [Database Assigments](./Lesson1/Assigment_Lesson_1.md)


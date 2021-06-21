/*
1. What is View? What are the benefits of using views?
view is the result set of a stored query on the data, which the database users can query just as
they would in a persistent database collection object.
a view can limit the degree of exposure of the underlying tables to the outer world: a given user
may have permission to query the view, while denied access to the rest of the base table.

2. Can data be modified through views?
View cannot be modify like group by and distinct.

3. What is stored procedure and what are the benefits of using it?
A stored procedure is a prepared SQL code that you can save, so the code can be reused over
and over again. So if you have an SQL query that you write over and over again, save it as
a stored procedure, and then just call it to execute it.

4. What is the difference between view and stored procedure?
View is simple showcasing data stored in the database tables whereas a stored procedure is a
group of statements that can be executed. A view is faster as it displays data from the tables
referenced whereas a store procedure executes sql statements.

5. What is the difference between stored procedure and functions?
A function has a return type and returns a value. A procedure does not have a return type. But it
returns values using the OUT parameters.

6. Can stored procedure return multiple result sets?
Stored procedures contain IN and OUT parameters or both. They may return result sets in case
you use SELECT statements. Stored procedures can return multiple result sets.

7. Can stored procedure be executed as part of SELECT Statement? Why?
Stored procedures are typically executed with an EXEC statement. However, you can execute a
stored procedure implicitly from within a SELECT statement, provided that the stored
procedure returns a result set.

8. What is Trigger? What types of Triggers are there?
Trigger is a Special kind of Stored Procedure or an operation that gets executed automatically
when an event occurs in the database.
DML Triggers, DDL Triggers, LOGON Triggers

9. What are the scenarios to use Triggers?
a trigger can be invoked when a row is inserted into a specified table or when certain table
columns are being updated.

10. What is the difference between Trigger and Stored Procedure?
Stored procedures are a pieces of the code in written in PL/SQL to do some specific task. On the
other hand, trigger is a stored procedure that runs automatically when various events happen (eg
update, insert, delete).

*/


--1.
--a.
-- insert into Region values (6, 'Middle Earth')

--b.
-- insert into Territories values (11111,'Gondor',5)

--c.
--insert into Employees (EmployeeID, LastName,FirstName, Territory)values (10, 'King', 'Aragorn', 'Gondor')

--2.
-- update Territories set TerritoryDescription = 'Arnor'
-- where TerritoryID = 11111

--3.
--delete from Territories 
--where TerritoryID = 11111

--delete from Region
--where RegionDescription = 'Middle Earth' and RegionID = 5

--4.
--create view view_product_order_chen as
--select p.ProductName, Count(o.Quantity) QuantityCount from Products p inner join
--[Order Details] o
--on o.ProductID = p.ProductID
--group by p.ProductName;--5.
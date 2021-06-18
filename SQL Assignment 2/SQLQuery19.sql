select c.ContactName
from Orders o inner join Customers c
on o.CustomerID = c.CustomerID
where OrderDate > '1998-01-01'
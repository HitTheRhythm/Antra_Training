select c.ContactName, count(c.ContactName)
from Orders o inner join Customers c
on o.CustomerID = c.CustomerID
group by c.ContactName
order by count(c.ContactName) asc
select c.ContactName, sum(d.Quantity) as quantity
from Orders o inner join Customers c
on o.CustomerID = c.CustomerID
inner join [Order Details] d
on d.OrderID = o.OrderID
group by c.ContactName
having sum(d.Quantity) > 100
order by sum(d.Quantity) desc
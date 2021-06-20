select distinct c.City
from Orders o inner join Customers c
on o.CustomerID = c.CustomerID
inner join [Order Details] r
on r.OrderID = o.OrderID
group by c.City, r.ProductID
having count(r.ProductID) > 2
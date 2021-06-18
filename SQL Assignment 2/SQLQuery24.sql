select distinct r.OrderDate, p.ProductName
from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
inner join Orders r
on r.OrderID = o.OrderID
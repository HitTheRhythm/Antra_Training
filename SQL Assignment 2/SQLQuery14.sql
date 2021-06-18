select distinct p.ProductName
from Products p inner join [Order Details] o
on p.ProductID = o.ProductID
inner join Orders r
on r.OrderID = o.OrderID
where r.OrderDate between '1995-01-01' and '2020-01-01'
--DATEDIFF(year,r.OrderDate,GETDATE())< 25

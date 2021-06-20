select * from
(select Top 1 e.City, count(o.OrderID) countOrder from Employees e inner join Orders o
on e.EmployeeID = o.EmployeeID
group by e.City) T1
inner join (
select Top 1 c.City, count(r.Quantity) countQuantity from [Order Details] r inner join
Orders d on r.OrderID = d.OrderID
inner join Customers c on c.CustomerID = d.CustomerID group by c.City) T2
on T1.City = T2.City


/*

How do you remove the duplicates record of a table?
Find duplicate rows using GROUP BY clause or ROW_NUMBER() function.
Use DELETE statement to remove the duplicate rows.
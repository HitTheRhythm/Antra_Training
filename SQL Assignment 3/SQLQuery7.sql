select * from Customers c
where c.City not in
(select o.ShipCity from Orders o inner join Customers c on o.ShipCity = c.City)
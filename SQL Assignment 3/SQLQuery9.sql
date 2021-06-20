select e.City from Employees e
where e.City not in (
select c.City from Orders o inner join Customers c
on c.CustomerID = o.CustomerID)/*select distinct e.City from Employees e
left join Customers c
on e.City = c.City
where c.City is null
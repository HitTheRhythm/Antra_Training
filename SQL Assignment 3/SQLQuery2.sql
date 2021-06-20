select distinct City
from Customers
where city not in (SELECT City from Employees)
from Customers c
left join Employees e
on c.City = e.City
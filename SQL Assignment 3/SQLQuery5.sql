select u.City from Customers u group by u.City having COUNT(u.City) > 2
union
select c.City from Customers c group by c.City having COUNT(c.City) = 2
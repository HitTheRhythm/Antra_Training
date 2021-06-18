select e.EmployeeID, e.LastName, e.FirstName, e.Title from Employees e inner join
Employees m
on e.EmployeeID = m.ReportsTo
where e.Title like '%manager%'
group by e.EmployeeID, e.LastName, e.FirstName, e.Title
having count(m.ReportsTo) > 2
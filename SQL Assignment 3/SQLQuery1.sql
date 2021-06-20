select distinct City
from Customers
where city in (select City from Employees)
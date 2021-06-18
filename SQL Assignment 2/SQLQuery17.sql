select City, count(CustomerID) as TotalCustomer
from Customers
group by City
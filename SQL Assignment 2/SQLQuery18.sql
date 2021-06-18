select City, count(ContactName) as TotalCustomer
from Customers
group by City
having count(ContactName) > 5
-- there is no City with over 10 customers, so i change it into 5 
-- to make sure there is an output


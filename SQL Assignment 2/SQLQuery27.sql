select city, ContactName, 'Customer' as Type from Customers
union
select city, ContactName, 'Supplier' as Type from Suppliers
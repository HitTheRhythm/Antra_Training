select c.Name as Country, p.Name as Province
from Person.StateProvince p 
inner join Person.CountryRegion c
on p.CountryRegionCode = c.CountryRegionCode
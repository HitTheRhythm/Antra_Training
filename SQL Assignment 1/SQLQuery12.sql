SELECT  Name, ListPrice  FROM Production.Product
where Name LIKE 'A%' or Name LIKE 'S%'
order by Name ASC
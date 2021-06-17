SELECT  Name, ListPrice  FROM Production.Product
where Name LIKE 'SPO%k' or Name LIke 'SPO%' and Name not like '%K%'
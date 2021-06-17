SELECT  ProductSubcategoryID,Name, Color  , ListPrice FROM Production.Product
WHERE Color in ('Red','Black','Silver','Yellow')
	  and ListPrice >= 539 
	  and ProductSubcategoryID <16
	
ORDER BY ProductSubcategoryID DESC
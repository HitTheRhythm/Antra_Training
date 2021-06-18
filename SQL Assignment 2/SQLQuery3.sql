select distinct c.Name, count(c.ProductSubcategoryID) as result
from Production.Product c inner join Production.ProductSubcategory o
on c.ProductSubcategoryID = o.ProductSubcategoryID
where c.ProductSubcategoryID is not null 
	  and o.ProductSubcategoryID is not null
group by c.Name
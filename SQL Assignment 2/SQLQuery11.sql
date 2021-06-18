select Color, Class, count(*) as theCount, avg(ListPrice) as AvgPrice
from Production.Product
where Class is not null and Color is not null
group by Color, Class
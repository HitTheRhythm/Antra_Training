select ProductID , Shelf,  avg(Quantity)as TheAvg
from Production.ProductInventory
where Shelf != 'N/A'
group by ProductID, Shelf
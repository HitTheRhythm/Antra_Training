select Shelf,ProductID, sum(Quantity)as TheSum
from Production.ProductInventory
where LocationID = 40
group by ProductID,Shelf
having sum(Quantity) < 100
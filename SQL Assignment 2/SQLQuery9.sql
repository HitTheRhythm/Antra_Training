select  ProductID , Shelf, avg(Quantity)as TheAvg
from Production.ProductInventory
group by Shelf , ProductID
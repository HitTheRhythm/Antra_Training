select sum(ProductID)as TheSum
from Production.ProductInventory
where LocationID = 40 and Quantity<100

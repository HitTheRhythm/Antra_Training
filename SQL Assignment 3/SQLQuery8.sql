WITH cte_ordersc
as(
SELECT oc.ShipCity,oc.ProductID, oc.average,DENSE_RANK() over (partition by
oc.ProductID order by oc.number) rnk FROM (
SELECT TOP(5) od.ProductID,o.ShipCity, SUM(Quantity) number,AVG(od.UnitPrice)
average FROM dbo.Orders o left join dbo.[Order Details] od on o.OrderID=od.OrderID
GROUP BY o.ShipCity, od.ProductID
ORDER BY number DESC
) oc
)select * from cte_ordersc where rnk = 1
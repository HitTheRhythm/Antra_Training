SELECT c.City,
SUM(od.Quantity) AS QTY FROM
Customers c
LEFT JOIN
Orders o
ON c.CustomerID = o.CustomerID
LEFT JOIN
[Order Details] od
ON o.OrderID = od.OrderID
GROUP BY c.City
ORDER BY QTY desc
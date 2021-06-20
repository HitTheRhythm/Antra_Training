SELECT c.CustomerID, c.CompanyName, c.ContactName,
SUM(od.Quantity) AS QTY FROM
Customers c
LEFT JOIN
Orders o
ON c.CustomerID = o.CustomerID
LEFT JOIN
[Order Details] od
ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName, c.ContactName
ORDER BY QTY desc
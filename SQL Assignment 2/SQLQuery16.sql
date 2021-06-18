select top 5 ShipPostalCode from Orders
where OrderDate between '1995-01-01' and '2020-1-01'
group by ShipPostalCode
order by count(ShipPostalCode) desc
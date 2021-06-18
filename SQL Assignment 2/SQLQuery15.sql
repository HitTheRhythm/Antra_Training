select top 5 ShipPostalCode 
from Orders
group by ShipPostalCode
order by count(ShipPostalCode) desc
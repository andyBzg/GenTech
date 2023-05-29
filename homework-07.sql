В рамках БД "песочница" напишите след/запросы

1. Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil.

SELECT 
	COUNT(*) AS Total_orders
FROM Orders
JOIN Customers ON Customers.CustomerID=Orders.CustomerID
JOIN Shippers ON Shippers.ShipperID=Orders.ShipperID
WHERE 
	Customers.Country='Brazil'
    	AND
    	Shippers.ShipperName='Speedy Express'


2. На какую сумму было отправлено товаров клиентам в USA

SELECT 
	SUM(OrderDetails.Quantity * Products.Price) AS Total_price
FROM OrderDetails
JOIN Orders ON Orders.OrderID=OrderDetails.OrderID
JOIN Customers ON Customers.CustomerID=Orders.CustomerID
JOIN Products ON Products.ProductID=OrderDetails.ProductID
WHERE Customers.Country='USA'

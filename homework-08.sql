В рамках БД "песочница":

1. Выполнить расчет З/П менеджеров за весь период заказов из расчета ставки в 10%

SELECT 
	Employees.LastName,
	Employees.FirstName,
	SUM(OrderDetails.Quantity * Products.Price) * .1 AS salary
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID=Products.ProductID
JOIN Orders ON OrderDetails.OrderID=Orders.OrderID
JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY salary DESC


2. Вывести сотрудников, у которых ко-во заказов менее 20

SELECT 
	Employees.LastName,
	Employees.FirstName,
	COUNT(Orders.OrderID) AS total_orders
FROM Orders
JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
GROUP BY Employees.EmployeeID
HAVING total_orders < 20
ORDER BY total_orders DESC


3. Вывести названия компаний-перевозчиков и сколько заказов каждая из них доставила

SELECT
	Shippers.ShipperName,
	COUNT(Orders.OrderID) AS total_orders
FROM Orders
JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
GROUP BY Shippers.ShipperID
ORDER BY total_orders DESC


4. Для клиентов из Mexico очистить контактные имена

UPDATE Customers
SET ContactName=NULL
WHERE Country='Mexico'


5. Описать связи между таблицами, напр., след. образом:

Orders.CustomerID (M:1) Customers.CustomerID
Orders.EmployeeID (M:1) Employees.EmployeeID
Orders.ShipperID (M:1) Shippers.ShipperID

Products.SupplierID (M:1) Suppliers.SupplierID
Products.CategoryID (M:1) Categories.CategoryID

OrderDetails.OrderID (M:1) Orders.OrderID
OrderDetails.ProductID (M:1) Products.ProductID

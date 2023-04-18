1.Примеры бизнес-процессов в службе доставки посылок.

Создание записи о прибытии послылки на склад - Create
Чтение информации о посылке на складе - Read
Обновление информации о посылке на складе - Update
Удаление записи о посылке на складе - Delete

Оплата доставки:
Создание записи о платеже за доставку - Create
Чтение информации о платеже за доставку - Read
Обновление информации о платеже за доставку - Update
Удаление записи о платеже за доставку - Delete

Обработка возвратов посылок:
Создание записи о возврате посылки - Create
Чтение информации о возврате - Read
Обновление информации о возврате - Update
Удаление записи о возврате - Delete


2.
SELECT ProductName, Price * 1.09 AS Price_EUR
FROM Products
WHERE Price>=20

3.
SELECT * 
FROM Products
WHERE CategoryID IN (5, 8)
ORDER BY Price DESC
LIMIT 2

4.
SELECT ProductName, Price AS Price_USD
FROM Products
ORDER BY Price
LIMIT 1

5.
SELECT CustomerName
FROM Customers
WHERE Country NOT IN ('UK', 'USA')
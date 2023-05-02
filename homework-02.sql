1. У клиентов из China и USA очистить контактное_имя.

UPDATE Customers
SET ContactName=NULL
WHERE Country IN ('China', 'USA')


2. У товаров без категории с ценой от 20 EUR изменить цену на 10

UPDATE Products
SET Price=10
WHERE CategoryID IS NULL 
AND Price>=20

SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 10 WITH TIES Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 10 PERCENT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice ASC;

SELECT ProductID, ProductNumber, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC 
OFFSET 0 ROWS --Skip zero rows
FETCH NEXT 10 ROWS ONLY; --Get the next 10

SELECT ProductID, ProductNumber, ListPrice
FROM Production.Product
ORDER BY ListPrice ASC 
OFFSET 0 ROWS --Skip zero rows
FETCH NEXT 10 ROWS ONLY; --Get the next 10
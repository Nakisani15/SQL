--Using the DISTINCT clause--
SELECT DISTINCT SIZE
FROM Production.Product

--Using AS and the EQUAL operator
SELECT ProductSubcategoryID AS Category, Name
FROM Production.Product
WHERE ProductSubcategoryID = 2;

--GREATER THAN--
SELECT ProductSubcategoryID AS Category, ProductNumber
FROM Production.Product
WHERE ListPrice > 10.00;

--IS NULL/IS NOT NULL--
SELECT ProductLine AS Line, ProductNumber
FROM Production.Product
WHERE ProductNumber IS NOT NULL;

--MULTIPLE CONDITIONS--
SELECT ProductID, ProductNumber
FROM Production.Product
WHERE ProductID = 2
    AND ListPrice < 10.00;

--MULTIPLE CONDITIONS--
	SELECT ProductSubcategoryID AS Category, ProductNumber
FROM Production.Product
WHERE (ProductSubcategoryID = 5 OR ProductSubcategoryID = 3)
    AND (ListPrice > 10.00);


--comparison operators--

SELECT BusinessEntityID AS EntityID, NationalIDNumber
FROM HumanResources.Employee
WHERE BusinessEntityID = 2
    OR BusinessEntityID = 3
    OR BusinessEntityID = 4;

	--or--

--use the IN operator
SELECT BusinessEntityID AS EntityID, NationalIDNumber
FROM HumanResources.Employee
WHERE BusinessEntityID IN (2,3,4)


SELECT * 
FROM HumanResources.Employee

SELECT BusinessEntityID AS EntityID, NationalIDNumber
FROM HumanResources.Employee
WHERE BirthDate >= '1950-03-27'
    AND BirthDate <= '1999-12-05'

	--use BETWEEN--
	SELECT BusinessEntityID AS EntityID, NationalIDNumber
FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1950-03-27' AND '1999-12-05';


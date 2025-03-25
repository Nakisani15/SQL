--USsing the SELECT and DISTINCT--
select * from Person.Person

SELECT DISTINCT Title, NameStyle, FirstName, MiddleName
FROM PERSON.Person

SELECT DISTINCT MiddleName
FROM PERSON.Person

--Using the COUNT clause--
SELECT COUNT(DISTINCT Title)
FROM PERSON.Person

SELECT COUNT(*) AS DistinctTitle
FROM (SELECT DISTINCT Title FROM PERSON.Person);

--using the WHERE CLAUSE--
SELECT NationalIDNumber, SalariedFlag, HireDate, JobTitle, BirthDate
FROM HumanResources.Employee
WHERE Gender = 'M'

SELECT COUNT(*)
FROM HumanResources.Employee
WHERE HireDate> '2010-12-26'

SELECT *
FROM HumanResources.Employee
WHERE HireDate< '2009-09-15'

--Using the 'ORDER BYE' Clause
SELECT BusinessEntityID, Bonus, TerritoryID, SalesYTD
FROM Sales.SalesPerson
Order by ModifiedDate

SELECT BusinessEntityID, Bonus, ModifiedDate, SalesYTD
FROM Sales.SalesPerson
Order by TerritoryID DESC

Select *
FROM Production.Product
ORDER BY ProductID, Weight, Class

Select Name
FROM Production.Product
ORDER BY ProductID, Weight, ReorderPoint DESC

SELECT COUNT(*) AS DistinctJobTitle
FROM (SELECT DISTINCT JobTitle FROM HumanResources.Employee) AS JobTitles;
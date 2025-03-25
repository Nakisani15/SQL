--SELECTING EVERYTHING IN A TABLE--
Select * FROM Production.Product

SELECT * FROM Person.Person
WHERE Title = 'Mrs'

SELECT BusinessEntityID, JobTitle, Birthdate
FROM HumanResources.Employee
WHERE MaritalStatus = 'M'


SELECT PersonType, NameStyle, Title
FROM Person.Person
ORDER BY ModifiedDate DESC;

--SELECT/TOP--
SELECT TOP 5 *  
FROM HumanResources.Employee  
ORDER BY HireDate DESC; 

--OR--
SELECT *  
FROM HumanResources.Employee  
ORDER BY HireDate DESC  
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--SELECT COUNT--
SELECT COUNT(*) FROM HumanResources.Employee
WHERE JobTitle = 'Tool Designer';


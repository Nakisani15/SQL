SELECT * FROM Sales.SalesOrder
WHERE Status = 'Shipped'
GROUP BY OrderDate 
HAVING COUNT(OrderID) > 1
SELECT OrderDate, COUNT(OrderID) AS Orders
ORDER BY OrderDate DESC;

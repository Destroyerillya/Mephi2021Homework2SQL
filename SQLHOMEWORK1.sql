SELECT TOP(1) ProductID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY QTY DESC

SELECT TOP(1) CustomerID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID GROUP BY CustomerID ORDER BY QTY DESC

SELECT TOP(1) SalesPersonID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID AND SalesPersonID IS NOT NULL GROUP BY SalesPersonID ORDER BY QTY DESC

SELECT TOP(1) CustomerID, SUM(LineTotal) AS MONEY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID GROUP BY CustomerID ORDER BY MONEY DESC


SELECT ProductID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY QTY DESC

SELECT CustomerID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID GROUP BY CustomerID ORDER BY QTY DESC

SELECT SalesPersonID, SUM(OrderQty) AS QTY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID AND SalesPersonID IS NOT NULL GROUP BY SalesPersonID ORDER BY QTY DESC

SELECT CustomerID, SUM(LineTotal) AS MONEY FROM Sales.SalesOrderHeader, Sales.SalesOrderDetail
WHERE Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID GROUP BY CustomerID ORDER BY MONEY DESC
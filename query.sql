SELECT TOP 10
    p.Name AS Produto,
    SUM(od.OrderQty) AS QuantidadeVendida,
    SUM(od.OrderQty * od.UnitPrice) AS FaturamentoTotal
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY FaturamentoTotal DESC;
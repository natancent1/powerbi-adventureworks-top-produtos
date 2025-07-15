# 📊 Power BI + SQL – Top Produtos por Faturamento (AdventureWorks)

Este projeto combina SQL + Power BI para identificar os **10 produtos com maior faturamento** da base AdventureWorks. Foi criado como parte do meu portfólio de transição para a área de Dados.

## 🚀 Objetivo
Visualizar os produtos mais rentáveis da empresa e apoiar decisões estratégicas com base em:
- Faturamento por produto
- Quantidade vendida
- Ticket médio (em versões futuras)

## 🔧 Ferramentas usadas
- SQL Server 2017
- Power BI Desktop
- AdventureWorks2017.bak (base pública de dados simulados)

## 🧠 Query SQL utilizada
```sql
SELECT TOP 10
    p.Name AS Produto,
    SUM(od.OrderQty) AS QuantidadeVendida,
    SUM(od.OrderQty * od.UnitPrice) AS FaturamentoTotal
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY FaturamentoTotal DESC;




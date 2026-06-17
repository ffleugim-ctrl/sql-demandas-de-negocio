--Problema: A tabela de vendas continha apenas o ID do produto e os valores parciais. Foi solicitado um cruzamento de dados para consolidar o Nome do Produto ao lado do Total de Receita acumulada que ele gerou para o negócio.


SELECT 
    P.ProductID AS [ID do Produto],
    P.Name AS [Nome do Produto],
    SUM(V.LineTotal) AS [Total de Receita]
FROM Sales.SalesOrderDetail AS V
INNER JOIN Production.Product AS P 
    ON V.ProductID = P.ProductID
GROUP BY P.ProductID, P.Name
ORDER BY [Total de Receita] DESC;

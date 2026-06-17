--Problema: Necessidade de listar todos os produtos ativos do portfólio, trazendo seu respectivo preço e a qual categoria ele pertence, ordenado por categoria e pelos produtos mais caros primeiro.

Solução SQL:
SELECT 
    P.ProductID AS [ID do Produto],
    P.Name AS [Nome do Produto],
    C.Name AS [Categoria],
    P.ListPrice AS [Preço]
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS S 
    ON P.ProductSubcategoryID = S.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS C 
    ON S.ProductCategoryID = C.ProductCategoryID
WHERE P.ListPrice > 0
ORDER BY C.Name ASC, P.ListPrice DESC;

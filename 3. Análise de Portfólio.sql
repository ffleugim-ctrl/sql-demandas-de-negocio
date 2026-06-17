--Problema: A diretoria precisava entender o tamanho do portfólio atual da empresa para saber a quantidade de produtos cadastrados por cada categoria macro.
SELECT
    C.Name AS Categoria,
    COUNT(P.ProductID) AS [Quantidade de Produtos]
FROM 
    Production.Product AS P
INNER JOIN 
    Production.ProductSubcategory AS S ON P.ProductSubcategoryID = S.ProductSubcategoryID
INNER JOIN 
    Production.ProductCategory AS C ON S.ProductCategoryID = C.ProductCategoryID
GROUP BY 
    C.Name
ORDER BY 
    [Quantidade de Produtos] DESC;

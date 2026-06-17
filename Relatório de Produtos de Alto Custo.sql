### 1. Relatório de Produtos de Alto Custo (Área de Custos)
* **Problema:** A equipe de custos precisava de uma lista rápida com o Nome e o Preço dos 10 produtos mais caros do catálogo para uma reunião estratégica de revisão de margens.
* **Solução SQL:**
```sql
SELECT TOP 10
    Name AS [Nome do Produto],
    ListPrice AS [Preço]
FROM 
    Production.Product
WHERE 
    ListPrice > 0
ORDER BY 
    [Preço] DESC;

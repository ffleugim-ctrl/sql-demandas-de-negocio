# sql-demandas-de-negocio
Com base nas consultas acima, foi possível fornecer à empresa:  Identificação de Outliers de Preço: Agilidade para a área financeira auditar os 10 itens que mais impactam o custo de estoque.  Segmentação de Clientes: Cruzamento eficiente de chaves primárias (BusinessEntityID) : Mapeamento visual de quais categorias possuem maior mix de produtos.
# 📊 Projeto: Inteligência de Dados com SQL (AdventureWorks)

## 📌 Contexto do Projeto
Este projeto foi desenvolvido para simular a resolução de problemas reais de negócio em uma empresa de grande porte, utilizando banco de dados relacional. O objetivo foi atuar de forma analítica para responder a demandas estratégicas de diversas áreas, como **Diretoria, Custos, Suporte ao Cliente e Vendas**, transformando dados brutos em insights acionáveis.

---

## 🛠️ Tecnologias e Ferramentas
* **Banco de Dados:** SQL Server / Azure SQL
* **Dataset:** AdventureWorks (Banco de dados de exemplo de e-commerce e manufatura)
* **Linguagem:** TQL (Transact-SQL)

---

## 📑 Demandas de Negócio e Soluções em SQL

Abaixo estão descritos os problemas de negócio apresentados pelas equipes e as respectivas consultas criadas para resolvê-los:

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

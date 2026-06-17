--Problema: O time de atendimento precisava identificar e entrar em contato com todos os clientes que possuíam o sobrenome "Silva", necessitando do Nome e do E-mail deles organizados em ordem alfabética. Para isso, foi necessário cruzar dados cadastrais com dados de contato.
SELECT 
    P.FirstName AS [Nome],
    P.LastName AS [Sobrenome],
    E.EmailAddress AS [Email]
FROM 
    Person.Person AS P
INNER JOIN
    Person.EmailAddress AS E ON P.BusinessEntityID = E.BusinessEntityID
WHERE 
    P.LastName = 'Silva'
ORDER BY 
    P.FirstName ASC;

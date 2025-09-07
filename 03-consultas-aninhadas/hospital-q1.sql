-- 2.1 Listar o número de CRM, nome e especialidade de todos os médicos que possuem
-- salário superior ou igual à média salarial dos médicos (agrupados por especialidade)
-- e ordenados em ordem crescente.

SELECT crm, nome, especialidade
FROM medico m
WHERE salario >= (
    SELECT AVG(salario)
    FROM medico m2
    WHERE m2.especialidade = m.especialidade
)
ORDER BY especialidade ASC, nome ASC;

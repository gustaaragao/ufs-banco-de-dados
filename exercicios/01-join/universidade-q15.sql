-- 1.15 Refaça a consulta 1.9 da atividade 4, usando OUTER JOIN - OUTER JOIN
-- 1.9  Listar a matrícula de todos os professores que orientam algum aluno e que não são chefes de algum departamento.
SELECT DISTINCT pl.mat_professor
FROM universidade.plano pl
LEFT JOIN universidade.departamento d ON pl.mat_professor = d.chefe
WHERE d.chefe IS NULL;
-- 1.8 Listar a matrícula de todos os professores que orientam algum aluno e que são chefes de algum departamento.
SELECT DISTINCT mat_professor FROM universidade.plano
INTERSECT
SELECT chefe FROM universidade.departamento WHERE chefe IS NOT NULL;
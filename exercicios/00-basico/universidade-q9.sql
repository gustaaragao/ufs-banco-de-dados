-- 1.9 Listar a matrícula de todos os professores que orientam algum aluno e que não são chefes de algum departamento
SELECT mat_professor FROM universidade.plano
EXCEPT
SELECT chefe FROM universidade.departamento WHERE chefe IS NOT NULL;
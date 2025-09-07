-- 1.14 Refazer a questão 1.8 da Lista anterior:
-- 1.8 Listar a matrícula de todos os professores que orientam algum aluno e que são chefes de algum departamento.
SELECT DISTINCT d.chefe FROM universidade.plano pl
JOIN universidade.departamento d ON d.chefe = pl.mat_professor;
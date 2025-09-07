-- 1.4 - Liste a matrícula de todos os professores que não orientam alunos e que não são
-- chefes de algum departamento.
SELECT 
	p.mat_professor
FROM universidade.professor p
WHERE p.mat_professor NOT IN (SELECT pl.mat_professor FROM universidade.plano pl) 
AND p.mat_professor NOT IN (SELECT d.chefe FROM universidade.departamento d);
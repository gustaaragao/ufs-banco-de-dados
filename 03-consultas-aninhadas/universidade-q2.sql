-- 1.2 - Liste a matrícula de todos os professores que não orientam alunos ou que são
-- chefes de algum departamento.
SELECT 
	p.mat_professor
FROM universidade.professor p
WHERE p.mat_professor NOT IN (SELECT pl.mat_professor FROM universidade.plano pl) 
OR p.mat_professor IN (SELECT d.chefe FROM universidade.departamento d);
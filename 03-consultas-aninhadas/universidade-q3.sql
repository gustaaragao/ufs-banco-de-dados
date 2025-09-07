-- 1.3 - Liste a matrícula de todos os professores que orientam algum aluno e que são
-- chefes de algum departamento.
SELECT 
	p.mat_professor
FROM universidade.professor p
WHERE p.mat_professor IN (SELECT pl.mat_professor FROM universidade.plano pl) 
AND p.mat_professor IN (SELECT d.chefe FROM universidade.departamento d);
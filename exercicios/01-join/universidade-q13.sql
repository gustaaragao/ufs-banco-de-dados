-- 1.13 Refaça a consulta 1.7 da atividade 4, usando OUTER JOIN - OUTER JOIN
-- 1.7  Listar a matrícula de todos os professores que orientam algum aluno ou que são chefes de algum departamento.
SELECT DISTINCT 
	pl.mat_professor, 
	d.chefe 
FROM universidade.plano pl 
FULL JOIN universidade.departamento d ON pl.mat_professor = d.chefe
WHERE pl.mat_professor IS NOT NULL OR d.chefe IS NOT NULL;
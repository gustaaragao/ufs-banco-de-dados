-- 1.1 Liste a matrícula do professor (mat_professor), a maior e a menor nota dada, e a
-- média de notas agrupado pela matrícula do professor, entre todas as suas turmas que ele
-- leciona.
SELECT 
	l.mat_professor, 
	MAX(c.nota), 
	MIN(c.nota), 
	AVG(c.nota) 
FROM universidade.cursa c
JOIN universidade.turma t USING(id_turma)
JOIN universidade.leciona l USING(id_turma)
GROUP BY l.mat_professor;
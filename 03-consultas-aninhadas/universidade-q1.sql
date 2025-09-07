-- 1.1 Liste a matrícula do estudante (mat_estudante) de todos os estudantes que são
-- orientados pelo professor P200 e que estão cursando alguma turma em que o professor
-- P500 leciona.
SELECT
	p.mat_estudante
FROM universidade.plano p
WHERE p.mat_professor='P200' AND p.mat_estudante IN (
	SELECT
		c.mat_estudante
	FROM universidade.cursa c
	JOIN universidade.leciona l USING(id_turma)
	WHERE mat_professor='P500'
);
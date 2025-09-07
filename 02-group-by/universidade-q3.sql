-- 1.3 Liste o nome da disciplina (nome), código do pré-requisito (pre_req) e número de
-- alunos em cada turma, agrupado pela disciplina.
SELECT 
	d.nome,
	d.pre_req,
	COUNT(t.id_turma)
FROM universidade.cursa c
JOIN universidade.turma t USING(id_turma)
JOIN universidade.disciplina d USING(cod_disc)
GROUP BY d.nome, d.pre_req;
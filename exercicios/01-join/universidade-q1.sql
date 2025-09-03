-- 1.1 Liste o nome das disciplinas que possuem turmas. - INNER JOIN
SELECT DISTINCT d.nome FROM universidade.disciplina d
INNER JOIN universidade.turma t ON d.cod_disc = t.cod_disc;
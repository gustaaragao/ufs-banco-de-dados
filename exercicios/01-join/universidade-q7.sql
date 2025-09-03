-- 1.7 Liste o nome da disciplina, turma e primeiro nome e sobrenome do professor, das disciplinas que não são pré-requisito - OUTER JOIN
SELECT
	pr.nome,
	t.id_turma,
	up.primeiro_nome,
	up.sobrenome
FROM universidade.disciplina d
RIGHT JOIN universidade.disciplina pr ON pr.cod_disc = d.pre_req
JOIN universidade.turma t ON pr.cod_disc = t.cod_disc
JOIN universidade.leciona l ON l.id_turma = t.id_turma
JOIN universidade.professor p ON p.mat_professor = l.mat_professor
JOIN universidade.usuario up ON up.cpf = p.cpf
WHERE d.cod_disc IS NULL;

-- SELECT * 
-- FROM universidade.disciplina d
-- RIGHT JOIN universidade.disciplina pr ON pr.cod_disc = d.pre_req;
-- 1.10 Liste o primeiro nome e sobrenome de todos alunos e o primeiro nome e sobrenome
-- dos professores, independente da orientação. - OUTER JOIN
SELECT
	up.primeiro_nome, 
	up.sobrenome,
	ue.primeiro_nome, 
	ue.sobrenome
FROM universidade.plano pl
RIGHT JOIN universidade.professor p ON p.mat_professor = pl.mat_professor
JOIN universidade.usuario up ON up.cpf = p.cpf
FULL JOIN universidade.estudante e ON e.mat_estudante = pl.mat_estudante
LEFT JOIN universidade.usuario ue ON ue.cpf = e.cpf;
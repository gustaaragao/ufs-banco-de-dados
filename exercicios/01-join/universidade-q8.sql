-- 1.8 Liste o primeiro nome e sobrenome de todos os alunos e primeiro nome e sobrenome do orientador, inclusive os alunos sem orientador. - OUTER JOIN
SELECT 
	ue.primeiro_nome, 
	ue.sobrenome,
	up.primeiro_nome, 
	up.sobrenome
FROM universidade.plano pl
JOIN universidade.professor p ON p.mat_professor = pl.mat_professor
JOIN universidade.usuario up ON up.cpf = p.cpf
RIGHT JOIN universidade.estudante e ON pl.mat_estudante = e.mat_estudante
JOIN universidade.usuario ue ON ue.cpf = e.cpf;
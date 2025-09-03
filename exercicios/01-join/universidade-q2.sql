-- 1.2 Liste o primeiro nome e sobrenome do estudante e o nome de cada disciplina das turmas que ele está cursando. - INNER JOIN
SELECT u.primeiro_nome, u.sobrenome, d.nome 
FROM universidade.turma t
JOIN universidade.disciplina d ON t.cod_disc = d.cod_disc
JOIN universidade.cursa c ON c.id_turma = t.id_turma
JOIN universidade.estudante e ON e.mat_estudante = c.mat_estudante
JOIN universidade.usuario u ON u.cpf = e.cpf;
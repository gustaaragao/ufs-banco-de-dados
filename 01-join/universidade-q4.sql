-- Considerando todas as turmas, liste o primeiro nome e sobrenome do professor, o
-- nome da disciplina que ele está lecionando, além disso liste o primeiro nome e sobrenome
-- de todos os alunos cursando essas turmas. - INNER JOIN
SELECT usr_prof.primeiro_nome, usr_prof.sobrenome, d.nome, usr_est.primeiro_nome, usr_est.sobrenome
FROM universidade.leciona l
JOIN universidade.turma t ON t.id_turma = l.id_turma
JOIN universidade.professor p ON p.mat_professor = l.mat_professor
JOIN universidade.cursa c ON c.id_turma = t.id_turma
JOIN universidade.estudante e ON e.mat_estudante = c.mat_estudante
JOIN universidade.disciplina d ON d.cod_disc = t.cod_disc
JOIN universidade.usuario usr_est ON usr_est.cpf = e.cpf
JOIN universidade.usuario usr_prof ON usr_prof.cpf = p.cpf;
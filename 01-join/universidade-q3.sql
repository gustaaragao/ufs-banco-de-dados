-- 1.3 Liste o primeiro nome e sobrenome do aluno e o primeiro nome e sobrenome de seu orientador. - INNER JOIN
SELECT usr_est.primeiro_nome, usr_est.sobrenome, usr_prof.primeiro_nome, usr_prof.sobrenome 
FROM universidade.plano p
JOIN universidade.professor prof ON prof.mat_professor = p.mat_professor
JOIN universidade.usuario usr_prof ON usr_prof.cpf = prof.cpf
JOIN universidade.estudante est ON est.mat_estudante = p.mat_estudante
JOIN universidade.usuario usr_est ON usr_est.cpf = est.cpf;
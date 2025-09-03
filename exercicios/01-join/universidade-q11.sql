-- 1.11 Liste o primeiro nome e sobrenome dos professores que não lecionam turmas. - OUTER JOIN
SELECT up.primeiro_nome, up.sobrenome
FROM universidade.leciona l 
RIGHT JOIN universidade.professor p ON p.mat_professor = l.mat_professor
JOIN universidade.usuario up ON up.cpf = p.cpf
WHERE l.id_turma IS NULL;
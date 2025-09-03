-- 1.6 Liste o primeiro nome e sobrenome do professor e o primeiro nome e sobrenome do seu chefe. - INNER JOIN
SELECT usr_p.primeiro_nome, usr_p.sobrenome, usr_c.primeiro_nome, usr_c.sobrenome 
FROM universidade.professor p
JOIN universidade.departamento d ON d.cod_depto = p.departamento
JOIN universidade.professor c ON c.mat_professor = d.chefe
JOIN universidade.usuario usr_p ON usr_p.cpf = p.cpf
JOIN universidade.usuario usr_c ON usr_c.cpf = c.cpf;
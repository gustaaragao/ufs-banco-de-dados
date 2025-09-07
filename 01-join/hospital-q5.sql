--  Listar o nome e CPF dos pacientes, seguido do nome e CPF dos seus acompanhantes. - INNER JOIN
SELECT up.primeironome, up.sobrenome, up.cpf, ua.primeironome, ua.sobrenome, ua.cpf 
FROM hospital.paciente p
JOIN hospital.usuario up ON up.cpf = p.cpf
JOIN hospital.usuario ua ON ua.cpf = p.cpfacomp;
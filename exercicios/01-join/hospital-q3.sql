-- 2.3 Listar o nome e CPF de todos os pacientes. - INNER JOIN
SELECT u.primeironome, u.sobrenome, u.cpf 
FROM hospital.paciente p
JOIN hospital.usuario u ON u.cpf = p.cpf;
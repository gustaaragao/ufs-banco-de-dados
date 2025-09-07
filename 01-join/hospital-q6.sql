-- 2.6 Listar o nome e CPF de todos os pacientes que realizaram consulta. - INNER JOIN
SELECT DISTINCT u.primeironome, u.sobrenome, u.cpf 
FROM hospital.paciente pa
JOIN hospital.consulta co ON co.numprontuario = pa.numprontuario
JOIN hospital.usuario u ON u.cpf = pa.cpf;
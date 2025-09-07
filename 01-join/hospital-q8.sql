-- 2.8 Listar o nome, CPF, número de prontuário e o nome do medicamento de todos os
-- pacientes que realizaram consulta e houve prescrição de medicamento. - OUTER JOIN
SELECT
	up.primeironome, 
	up.sobrenome, 
	up.cpf, 
	p.numprontuario,
	md.nome
FROM hospital.paciente p
JOIN hospital.consulta co ON co.numprontuario = p.numprontuario
LEFT JOIN hospital.prescricao pr ON pr.numprontuario = co.numprontuario
JOIN hospital.medicamento md USING(idmedicamento)
JOIN hospital.usuario up USING(cpf);
-- 2.7 Listar o nome, CPF e número de prontuário de todos os pacientes que realizaram consulta e não houve prescrição de medicamento. - OUTER JOIN
SELECT DISTINCT 
	u.primeironome, 
	u.sobrenome, 
	u.cpf, 
	p.numprontuario 
FROM hospital.paciente p
JOIN hospital.consulta co ON co.numprontuario = p.numprontuario
LEFT JOIN hospital.prescricao pr ON pr.numprontuario = co.numprontuario
JOIN hospital.usuario u USING(cpf)
WHERE pr.idconsultaprescricao IS NULL;
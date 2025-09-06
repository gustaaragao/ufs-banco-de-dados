-- 2.3 Listar a quantidade de médicos por especialidade.
SELECT 
	m.especialidade,
	COUNT(*)
FROM hospital.medico m
GROUP BY m.especialidade;
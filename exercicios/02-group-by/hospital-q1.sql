-- 2.1 Listar a especialidade e a soma dos salários dos médicos por especialidade,  porém 
-- somente as especialidades, que somadas, ultrapassam o valor   de 20 mil reais.
SELECT 
	m.especialidade,
	SUM(m.salario)
FROM hospital.medico m
GROUP BY m.especialidade
HAVING SUM(m.salario) > 20000;
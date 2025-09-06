-- 2.2 Listar a especialidade e a soma dos salários dos médicos   docentes, porém somente 
-- as especialidades, que somadas, ultrapassam   o valor de 15 mil reais.   
SELECT 
	m.especialidade,
	SUM(m.salario)
FROM hospital.medico m
JOIN hospital.medico_docente d USING(idregistro)
GROUP BY m.especialidade
HAVING SUM(m.salario) > 15000;
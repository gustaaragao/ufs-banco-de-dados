-- 2.10. Listar o maior salário entre os médicos que possuem especialidade como Clínico Geral.
SELECT MAX(salario) FROM hospital.medico WHERE especialidade='Clínico Geral';
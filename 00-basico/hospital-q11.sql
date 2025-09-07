-- 2.11. Listar a média de salário de todos os médicos que são Cirurgião.
SELECT AVG(salario) FROM hospital.medico WHERE especialidade='Cirurgião';
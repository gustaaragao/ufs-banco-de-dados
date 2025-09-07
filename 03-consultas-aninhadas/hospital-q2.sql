-- 2.2 Listar o nome e o número de prontuário de todos os pacientes que realizaram
-- consultas com médicos de especialidade de “Clínico Geral”.

SELECT DISTINCT p.nome, p.num_prontuario
FROM paciente p
JOIN consulta c ON p.num_prontuario = c.num_prontuario
JOIN medico m ON c.crm = m.crm
WHERE m.especialidade = 'Clínico Geral';

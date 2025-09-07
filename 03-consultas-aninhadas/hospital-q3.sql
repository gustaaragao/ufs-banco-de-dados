-- 2.3 Listar o nome, CPF e número de prontuário de todos os pacientes que realizaram
-- consultas no mês de junho de 2018.

SELECT DISTINCT p.nome, p.cpf, p.num_prontuario
FROM paciente p
JOIN consulta c ON p.num_prontuario = c.num_prontuario
WHERE c.data_consulta BETWEEN '2018-06-01' AND '2018-06-30';

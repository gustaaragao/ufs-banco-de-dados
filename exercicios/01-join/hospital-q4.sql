-- 2.4 Listar a soma de todos os salários dos médicos, porém apenas os que possuem cadastro ativo. - INNER JOIN
SELECT SUM(m.salario) FROM hospital.medico m
JOIN hospital.usuario u ON u.cpf = m.cpf
JOIN hospital.perfil p ON p.idperfil = u.idperfil
WHERE p.ativo='S';
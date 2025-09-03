-- 2.1 Listar o CPF e sobrenome de todos os usuários que possuem a sílaba “sa" em seu sobrenome.
SELECT COUNT(*) FROM hospital.usuario WHERE sobrenome LIKE 'S%';
-- 2.1 Listar o CPF e sobrenome de todos os usuários que possuem a sílaba “sa" em seu sobrenome.
SELECT u.cpf, u.sobrenome FROM hospital.usuario u WHERE u.sobrenome LIKE '%sa%';
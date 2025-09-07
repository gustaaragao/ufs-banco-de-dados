-- 1.3 Liste o nome, sobrenome e cpf de todas as pessoas que têm telefone.
SELECT primeiro_nome, sobrenome, cpf FROM universidade.usuario WHERE telefone IS NOT NULL;
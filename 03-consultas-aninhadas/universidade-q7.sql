-- 1.7 - Liste o primeiro_nome e sobrenome do professor que recebe o menor salário.
SELECT 
	u.primeiro_nome,
	u.sobrenome
FROM universidade.professor p
JOIN universidade.cargo c ON c.id_cargo = p.cargo
JOIN universidade.usuario u USING(cpf)
WHERE c.salario = (
	SELECT MIN(c.salario) menor_salario FROM universidade.cargo c
);
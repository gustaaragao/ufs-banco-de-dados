-- 1.5 Liste o maior e o menor salário agrupado por departamento.
SELECT
	p.departamento,
	MIN(c.salario),
	MAX(c.salario)
FROM universidade.professor p
JOIN universidade.cargo c ON c.id_cargo = p.cargo
GROUP BY p.departamento;
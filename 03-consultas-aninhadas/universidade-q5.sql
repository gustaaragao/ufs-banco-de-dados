-- 1.5 - Liste a menor média de salários dentre todos os departamentos
SELECT (
	MIN(media)
) FROM (
	SELECT 
		p.departamento,
		AVG(c.salario) media
	FROM universidade.professor p
	JOIN universidade.cargo c ON c.id_cargo = p.cargo
	GROUP BY p.departamento
);
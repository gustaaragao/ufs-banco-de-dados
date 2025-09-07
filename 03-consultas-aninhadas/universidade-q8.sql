-- 1.8 - Liste o primeiro_nome e sobrenome do aluno com a menor média de notas (notas
-- diferentes de nulo).
WITH media_notas AS (
	SELECT
		mat_estudante,
		AVG(nota) media
	FROM universidade.cursa
	GROUP BY (mat_estudante)
)

SELECT
	primeiro_nome,
	sobrenome,
	media
FROM media_notas
JOIN universidade.estudante e USING(mat_estudante)
JOIN universidade.usuario u USING(cpf)
WHERE media = (SELECT MIN(media) FROM media_notas);
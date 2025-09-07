-- 1.10 - Usando consultas aninhadas no WHERE, liste o nome da disciplina e média das
-- notas das turmas de cada disciplina. Porém, somente as disciplinas as quais a média de
-- notas é menor que a média de nota das disciplinas do seu departamento responsável. Será
-- necessário calcular a média de notas por disciplina, e, separadamente, calcular a média de
-- notas por departamento responsável.

-- Seleciona o nome da disciplina e a média das notas das turmas de cada disciplina,
-- apenas para disciplinas cuja média é menor que a média das disciplinas do seu departamento.

SELECT d.nome AS disciplina, AVG(n.nota) AS media_disciplina
FROM disciplina d
JOIN turma t ON d.cod_disc = t.cod_disc
JOIN nota n ON t.cod_turma = n.cod_turma
GROUP BY d.cod_disc, d.nome, d.cod_dep
HAVING AVG(n.nota) < (
	SELECT AVG(n2.nota)
	FROM disciplina d2
	JOIN turma t2 ON d2.cod_disc = t2.cod_disc
	JOIN nota n2 ON t2.cod_turma = n2.cod_turma
	WHERE d2.cod_dep = d.cod_dep
)
ORDER BY d.nome;

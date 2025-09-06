-- 1.4 Liste o nome do departamento responsável (nome) e média das notas das turmas, agrupado pelo código do departamento responsável.
SELECT 
	dep.nome,
	AVG(c.nota)
FROM universidade.cursa c
JOIN universidade.turma t USING(id_turma)
JOIN universidade.disciplina d USING(cod_disc)
JOIN universidade.departamento dep ON d.depto_responsavel = dep.cod_depto
GROUP BY dep.cod_depto;
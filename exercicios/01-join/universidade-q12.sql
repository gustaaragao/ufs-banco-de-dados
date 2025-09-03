-- 1.12 Liste o nome das disciplinas das turmas que não tem alunos cursando. - OUTER JOIN
SELECT d.nome 
FROM universidade.cursa c
JOIN universidade.turma t USING(id_turma)
RIGHT JOIN universidade.disciplina d USING(cod_disc)
WHERE c.id_turma IS NULL;
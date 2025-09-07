-- 1.6 - Liste a matrícula do professor, a média de notas de cada professor entre todas as suas
-- turmas, o departamento do professor e a média do departamento que ele faz parte.
SELECT 
    *
FROM (
    SELECT 
        l.mat_professor, 
        p.departamento, 
        AVG(c.nota) AS media_prof
    FROM universidade.cursa c
    JOIN universidade.turma t USING (id_turma)
    JOIN universidade.leciona l USING (id_turma)
    JOIN universidade.professor p USING (mat_professor)
    GROUP BY l.mat_professor, p.departamento
) mp
JOIN (
    SELECT 
        p.departamento,
        AVG(c.nota) AS media_dpt
    FROM universidade.cursa c
    JOIN universidade.turma t USING (id_turma)
    JOIN universidade.leciona l USING (id_turma)
    JOIN universidade.professor p USING (mat_professor)
    GROUP BY p.departamento
) md
ON mp.departamento = md.departamento;
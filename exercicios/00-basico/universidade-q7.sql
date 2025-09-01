SELECT DISTINCT mat_professor FROM universidade.plano
UNION
SELECT chefe FROM universidade.departamento WHERE chefe IS NOT NULL;

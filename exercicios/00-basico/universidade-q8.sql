SELECT DISTINCT mat_professor FROM universidade.plano
INTERSECT
SELECT chefe FROM universidade.departamento WHERE chefe IS NOT NULL;

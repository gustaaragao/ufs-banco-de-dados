-- 2.13. Listar somente a quantidade de pessoas que são do sexo masculino e que nasceram a partir de 1980.
SELECT * FROM hospital.usuario WHERE sexo='M' AND datanasc >= '1980-01-01';
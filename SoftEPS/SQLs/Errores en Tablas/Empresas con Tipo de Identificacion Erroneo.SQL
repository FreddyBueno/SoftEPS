SELECT *
FROM empresas
WHERE  NOT tip_documento  IN  ('CC','NIT','CE')
ORDER BY cod_regional



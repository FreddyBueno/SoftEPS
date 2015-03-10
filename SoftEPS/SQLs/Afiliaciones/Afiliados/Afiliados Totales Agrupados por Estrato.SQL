SELECT cod_estrato,count(*) As Total_de_Afiliados
FROM afiliados 
GROUP BY cod_estrato


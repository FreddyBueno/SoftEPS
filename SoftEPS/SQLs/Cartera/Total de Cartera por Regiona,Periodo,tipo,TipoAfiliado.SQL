SELECT cod_regional,per_compensacion AS Periodo_Compensacion,tipo_mora AS Tipo_Mora,cartera.cod_tipo_afil AS Tipo_Afiliado,count(*) AS Numero_de_Afiliados,convert(money,sum(valor_mora)) AS Total_Cartera_IBC,convert(money,sum(valor_upc)) AS Total_Cartera_UPC
FROM cartera,afiliados
WHERE (cartera.tip_documento = afiliados.tip_documento AND
               cartera.num_documento = afiliados.num_documento)
GROUP BY cod_regional,per_compensacion,tipo_mora,cartera.cod_tipo_afil



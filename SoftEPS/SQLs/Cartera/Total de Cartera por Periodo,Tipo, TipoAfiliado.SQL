SELECT per_compensacion AS Periodo_Compensacion,tipo_mora AS Tipo_Mora,cod_tipo_afil AS Tipo_Afiliado,count(*) AS Numero_de_Afiliados,convert(money,sum(valor_mora)) AS Total_Cartera_IBC,convert(money,sum(valor_upc)) AS Total_Cartera_UPC
FROM cartera
GROUP BY per_compensacion,tipo_mora,cod_tipo_afil


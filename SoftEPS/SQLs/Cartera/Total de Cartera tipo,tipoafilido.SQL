SELECT tipo_mora AS Tipo_Mora,cod_tipo_afil AS Tipo_Afiliado,count(*) AS Numero_de_Afiliados,convert(money,sum(valor_mora)) AS Total_Cartera_IBC,convert(money,sum(valor_upc)) AS Total_Cartera_UPC,convert(money,sum(Interes)) AS Interes
FROM cartera
GROUP BY tipo_mora,cod_tipo_afil




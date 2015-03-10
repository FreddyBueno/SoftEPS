SELECT afiliados.cod_regional, cartera.tip_documento_emp, cartera.num_documento_emp, cartera.cod_sucursal_emp, empresas.nom_empresa, sum(cartera.valor_mora) AS Total_IBC, sum(cartera.valor_upc) AS Total_UPC
FROM cartera,afiliados,empresas
WHERE (cartera.tip_documento = afiliados.tip_documento AND
               cartera.num_documento = afiliados.num_documento) AND
               (cartera.tip_documento_emp = empresas.tip_documento AND
               cartera.num_documento_emp = empresas.num_documento AND
               cartera.cod_sucursal_emp = empresas.cod_sucursal) AND
               afiliados.cod_regional = "101" 
GROUP BY afiliados.cod_regional,cartera.tip_documento_emp, cartera.num_documento_emp, cartera.cod_sucursal_emp,empresas.nom_empresa
ORDER BY afiliados.cod_regional,cartera.tip_documento_emp, cartera.num_documento_emp, cartera.cod_sucursal_emp,empresas.nom_empresa





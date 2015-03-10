SELECT sum( cartera.valor_mora)
FROM cartera,afiliados,empresas
WHERE (cartera.tip_documento = afiliados.tip_documento AND
               cartera.num_documento = afiliados.num_documento) AND
               (cartera.tip_documento_emp = empresas.tip_documento AND
               cartera.num_documento_emp = empresas.num_documento AND
               cartera.cod_sucursal_emp = empresas.cod_sucursal) AND
               cartera.tip_documento_emp = "NIT" AND
               cartera.num_documento_emp = "800208423"




SELECT emp_tipo_doc, emp_numero_doc,cod_sucursal,cod_regional
FROM autoliquidacion
WHERE emp_tipo_doc+emp_numero_doc+cod_sucursal NOT IN (SELECT tip_documento+num_documento+cod_sucursal FROM empresas)


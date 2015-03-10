select * from cartera, afiliados, empresas
where cartera.per_compensacion = "11/2001" 
          and  cartera.tip_documento = afiliados.tip_documento
          and cartera.num_documento = afiliados.num_documento
          and cartera.tip_documento_emp = empresas.tip_documento
          and cartera.num_documento_emp = empresas.num_documento
          and cartera.cod_sucursal_emp = empresas.cod_sucursal



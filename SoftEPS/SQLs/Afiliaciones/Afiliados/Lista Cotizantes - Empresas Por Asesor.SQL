select * from afiliados,acesores,afiliados_empresas
where afiliados.tip_documento = afiliados_empresas.tip_documento_afi and
      afiliados.num_documento = afiliados_empresas.num_documento_afi and
      afiliados.ace_numero_doc = acesores.num_documento
order by afiliados.ace_numero_doc,afiliados.fec_afiliacion_uni




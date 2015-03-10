select tip_documento, num_documento, fec_nacimiento, cod_sexo, cod_grupo_etareo, tip_beneficiario, tip_upc, id_multiafiliado from afiliados, afiliados_compensados
where tip_documento = afi_tipo_doc
  and  num_documento = afi_numero_doc
  and num_declaracion = convert(decimal,"4180")
order by fec_nacimiento desc




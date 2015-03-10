select * from afiliados_compensados, afiliados
where  (num_declaracion >= convert(decimal,"4336") and num_declaracion <= convert(decimal,"4336"))
           and (id_multiafiliado is not null or id_multiafiliado <> '')
           and afi_tipo_doc = tip_documento
           and afi_numero_doc = num_documento






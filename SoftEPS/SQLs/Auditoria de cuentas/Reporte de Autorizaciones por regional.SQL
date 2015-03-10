SELECT amencaut.no_autorizacion,convert(varchar,afiliados.pri_apellido),convert(varchar,afiliados.seg_apellido),convert(varchar,pri_nombre),
       convert(varchar,seg_nombre),afiliados.cod_tipo_afil, Afiliados.tip_documento,afiliados.num_documento,amdetaut.cd_servicio,
       amdetaut.cantidad, amencaut.nr_ident_prest_ips,convert( varchar, prestadores.mon_prestador) ,
       amencaut.valor_copago as 'Copago Unimec', amencaut.valor_cuotam as 'Cuota Moderadora Unimec',
       amencaut.valor_cuotapr as 'Copago I.P.S.', amencaut.valor_cuotam as  'Cuota Moderadora I.P.S.',
       convert(varchar(255),amdetaut.observacion)

FROM amencaut (INDEX cd_regional), afiliados(index idtp_doc_num_doc),amdetaut(INDEX AMDETAUT_20899306671),prestadores(index pkprestador)

WHERE (amencaut.tp_ident_afilia=afiliados.tip_documento and
	amencaut.nr_ident_afilia=afiliados.num_documento) and
                (amencaut.cd_regional=amdetaut.cd_regional and
                 amencaut.id_autorizador=amdetaut.id_autorizador and
                 amencaut.no_solicitud=amdetaut.no_solicitud) and
                 prestadores.cod_prestador = convert(varchar,AMENCAUT.Nr_Ident_Prest_Ips)  and
                 amencaut.cd_regional  = "101 " AND
	amencaut.fec_autorizacion>=CONVERT(datetime,"2001/01/01") AND
                 amencaut.fec_autorizacion>=CONVERT(datetime,"2001/01/30")












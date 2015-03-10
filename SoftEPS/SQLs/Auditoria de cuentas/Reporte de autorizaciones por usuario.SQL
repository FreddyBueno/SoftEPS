select amencaut.no_autorizacion,convert(varchar,afiliados.pri_apellido),convert(varchar,afiliados.seg_apellido),convert(varchar,afiliados.pri_nombre),
           convert(varchar,afiliados.seg_nombre),afiliados.cod_tipo_afil, Afiliados.tip_documento,afiliados.num_documento,amdetaut.cd_servicio,
           amdetaut.cantidad, amencaut.nr_ident_prest_ips,convert( varchar, prestadores. mon_prestador) ,
           amencaut.valor_copago as 'Copago Unimec', amencaut.valor_cuotam as 'Cuota Moderadora Unimec',
           amencaut.valor_cuotapr as 'Copago I.P.S.', amencaut.valor_cuotam as  'Cuota Moderadora I.P.S.',
           convert(varchar,amdetaut.observacion)      

from amencaut(index  nr_iden_afilia) ,afiliados (index idtp_doc_num_doc),amdetaut(index amdetaut_20899306671),prestadores (index pkprestador)


where  (amencaut.tp_ident_afilia=afiliados.tip_documento and
	amencaut.nr_ident_afilia=afiliados.num_documento) and
                (amencaut.cd_regional=amdetaut.cd_regional and
                 amencaut.id_autorizador=amdetaut.id_autorizador and
                 amencaut.no_solicitud=amdetaut.no_solicitud) and
                 prestadores.cod_prestador = convert(varchar,AMENCAUT.Nr_Ident_Prest_Ips)  and
               AMENCAUT.Nr_Ident_AFILIA="91250236"









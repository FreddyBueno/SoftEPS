SELECT afiliados.cod_regional as Regional_Origen,
       ciudades.nom_ciudad,
       AMENCAUT.TP_IDENT_AFILIA,
       AMENCAUT.NR_IDENT_AFILIA,
       (pri_apellido + ' '+ seg_apellido  + ' '+  pri_nombre  + ' '+  seg_nombre) as Nombre,
       fec_nacimiento,
       datediff(yy,fec_nacimiento,getdate()) as edad,
       cod_sexo as sexo,
       (amdetaut.cd_regional + ' ' + amdetaut.id_autorizador + ' ' + amdetaut.no_solicitud) AS codigo_solicitud, 
       amdetaut.tabla,
       amdetaut.cd_servicio, 
       CONVERT(VARCHAR(255),AMDETAUT.observacion) AS PROCEDIMIENTO,
       AMENCAUT.Fec_Autorizacion,
       AMDETAUT.cantidad,
		 AMDETAUT.valor,
		 AMDETAUT.valor_total 
FROM   amdetaut,amencaut,afiliados,ciudades
WHERE ( AMDETAUT.Cd_Regional = AMENCAUT.Cd_Regional  and  
        AMDETAUT.Id_Autorizador = AMENCAUT.Id_Autorizador  and  
        AMDETAUT.No_Solicitud = AMENCAUT.No_Solicitud ) and

      ( AMENCAUT.TP_IDENT_AFILIA = afiliados.tip_documento AND 
        AMENCAUT.NR_IDENT_AFILIA = afiliados.num_documento ) AND

      ( afiliados.cod_departamento_res = ciudades.cod_departamento AND
        afiliados.cod_ciudad_res = ciudades.cod_ciudad) AND
  
      AMDETAUT.TABLA = 'MAP' AND
      AMENCAUT.FEC_AUTORIZACION >= CONVERT(datetime,"01/01/2002",103) AND 
      AMENCAUT.FEC_AUTORIZACION <= CONVERT(datetime,"30/01/2002",103) AND
      CONVERT(varchar(8),AMDETAUT.observacion) IN ('ISS16103','ISS16201','ISS16205','ISS16210','ISS16216','ISS16215','ISS16240','ISS16260','ISS16262',
'ISS16264','ISS16353','ISS16350','ISS16508','ISS16509','ISS16504','ISS17301','ISS17302','ISS17304','ISS17305','ISS16364','ISS17307',
'ISS16210','ISS17308','ISS36100','ISS36101','ISS36102','ISS36105','ISS36106','ISS36201','ISS36203','ISS36205',
'ISS36302','ISS36303','ISS36305','ISS36306','ISS36401','ISS36402','ISS36403','ISS36601','ISS36602','ISS36603','ISS36604','ISS36607',
'ISS36803','ISS36804','ISS36903','ISS36904','ISS36905','SOA16104','SOA16201','SOA16206','SOA16207','SOA16212','SOA16230','SOA16231','SOA16243','SOA16261','SOA16262',
'SOA16265','SOA16271','SOA16330','SOA16331','SOA16333','SOA16334','SOA16510','SOA16511','SOA17301','SOA17302','SOA17304','SOA17305','SOA17307',
'SOA17308','SOA17309','SOA36100','SOA36101','SOA36102','SOA36103','SOA36104','SOA36201','SOA36202','SOA36203','SOA36204','SOA36205',
'SOA36206','SOA36209','SOA36210','SOA36303','SOA36304','SOA36305','SOA36306','SOA36307','SOA36308','SOA36401','SOA36402','SOA36403','SOA36601','SOA36602','SOA36603','SOA36604','SOA36607',
'SOA36616','SOA36803','SOA36804','SOA36805','SOA36901','SOA36902','SOA36903','SOA36904','SOA36905','SOA36906','SOA36907','SOA36908')

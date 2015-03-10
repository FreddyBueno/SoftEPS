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
      (AMDETAUT.observacion LIKE  'ISS39125%' OR
      AMDETAUT.observacion LIKE  'ISS39126%' OR
      AMDETAUT.observacion LIKE  'ISS36101%' OR
      AMDETAUT.observacion LIKE  'ISS36100%' OR
      AMDETAUT.observacion LIKE  'SOA39141%' OR
      AMDETAUT.observacion LIKE  'SOA39143%' OR
      AMDETAUT.observacion LIKE  'SOA36101%' OR
      AMDETAUT.observacion LIKE  'SOA36101%')


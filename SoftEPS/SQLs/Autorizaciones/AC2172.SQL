TRUNCATE TABLE temporales;

INSERT INTO temporales (campo1,campo2,campo3,campo4) 
SELECT  udsecruc.tabla1,udsecruc.codigo1,udsecruc.tabla2,udsecruc.codigo2
FROM    acuerdo_217,udsecruc
WHERE   (acuerdo_217.codigo_cups = udsecruc.codigo2); 

SELECT amencaut.tp_ident_afilia,amencaut.nr_ident_afilia,afiliados.pri_apellido,
  		  afiliados.seg_apellido,afiliados.pri_nombre,afiliados.seg_nombre,
        afiliados.fec_nacimiento, afiliados.cod_sexo, afiliados.cod_departamento_res,
        afiliados.cod_ciudad_res,(afiliados.num_semana_cotiza+afiliados.sem_cotizacion) AS Sem_Cotiza,
		  afiliados.fec_afiliacion_uni,amdetaut.cd_servicio AS Diagnostico,
  		  (case when amdetaut1.tabla= 'MED' then '1' when amdetaut1.tabla = 'MAP' THEN '2' end) as EVENTO,
		  temporales.campo4 as cd_evento, Sum(AMDETAUT1.Cantidad) AS SumaDeServicios,
		  Sum(AMDETAUT1.Valor) AS SumaDeValor,'V' AS Estado_Vital,amencaut.nr_ident_prest,
		  amdetaut1.nivel,amdetaut1.cd_servicio,
		  convert(varchar(150),amdetaut1.observacion),convert(varchar(100),amencaut.observaciones),convert(varchar(100),amencaut.observaciones_aut)
 
FROM   afiliados,amencaut,amdetaut,amdetaut amdetaut1,temporales

 WHERE ((amencaut.tp_ident_afilia  *= afiliados.tip_documento) and
		  (amencaut.nr_ident_afilia *= afiliados.num_documento)) and

		  ((amdetaut.cd_regional = amencaut.cd_regional ) and
		  (amdetaut.id_autorizador = amencaut.id_autorizador ) and
		  (amdetaut.no_solicitud = amencaut.no_solicitud ) and
		  (amdetaut.tabla= 'DIA' )) and
	 
		  ((amdetaut1.cd_regional = amencaut.cd_regional ) and
		  (amdetaut1.id_autorizador = amencaut.id_autorizador ) and
		  (amdetaut1.no_solicitud = amencaut.no_solicitud) and
		  (amdetaut1.tabla <>'DIA') and amdetaut1.cd_servicio = temporales.campo2  ) and
			
		  amencaut.fec_autorizacion>=CONVERT(datetime,"01/02/2002",103) AND
		  amencaut.fec_autorizacion<=CONVERT(datetime,"28/02/2002",103)

GROUP BY amencaut.tp_ident_afilia,amencaut.nr_ident_afilia,afiliados.pri_apellido,
         afiliados.seg_apellido,afiliados.pri_nombre,afiliados.seg_nombre,
         afiliados.fec_nacimiento, afiliados.cod_sexo,afiliados.cod_departamento_res,
         afiliados.cod_ciudad_res,(afiliados.num_semana_cotiza+afiliados.sem_cotizacion),
         afiliados.fec_afiliacion_uni,amdetaut.cd_servicio, amdetaut1.tabla, campo4, 
         amencaut.nr_ident_prest,amdetaut1.nivel, amdetaut1.cd_servicio, 
         convert(varchar(150),amdetaut1.observacion),convert(varchar(100),amencaut.observaciones),convert(varchar(100),amencaut.observaciones_aut)




SELECT prestadores.mon_prestador,prestadores.cod_prestador,prestadores.num_acreditacion,
              contratos_prestadores.nr_contrato,
              case contratos_prestadores.modalidad when  '1'  then 'sin contrato' else 'con contrato' end as 'Contrato',
              servicios_contrato.tar_porcentaje, servicios_contrato.cod_servicio,servicios_contrato.desc_tipo_auto,
              case  prestadores.rec_copago when  'I'  then 'IPS' else 'HUNIMEC' end as 'REC_COPAGO',
              case  prestadores.rec_cuota when  'I'  then 'IPS' else 'HUNIMEC' end as 'REC_CUOTA',
              contratos_prestadores.tp_cobertura,contratos_prestadores.termi_contrato,
              contratos_prestadores.plazo_pago, contratos_prestadores.observaciones

FROM prestadores (index pkprestador),contratos_prestadores,servicios_contrato

WHERE ((prestadores.cod_prestador = contratos_prestadores.cod_prestador and
               contratos_prestadores.nr_contrato = servicios_contrato.num_contrato ) AND
               ( contratos_prestadores.cod_prestador  ="77309810 "))









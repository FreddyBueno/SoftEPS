SELECT CONTRATOS_prestadores.COD_PRESTADOR, CONTRATOS_prestadores.NR_CONTRATO, CONTRATOS_prestadores.INICIO_CONTRATO, CONTRATOS_prestadores.TERMI_CONTRATO, CONTRATOS_prestadores.REGIONAL,CONTRATOS_prestadores.USUARIO
FROM CONTRATOS_prestadores, PRESTADORES
WHERE (((CONTRATOS_prestadores.COD_PRESTADOR)=PRESTAdores.COD_PRESTADOR)) AND
CONTRATOS_prestadores.NR_CONTRATO = NULL

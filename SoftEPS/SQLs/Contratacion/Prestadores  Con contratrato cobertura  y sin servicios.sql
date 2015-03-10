select * from prestadores 
where (cod_prestador  in (select cd_prestador from cobertura_contrato) and
cod_prestador not in (select cod_prestador from servicios_contrato)) and
est_prestador >= '0'


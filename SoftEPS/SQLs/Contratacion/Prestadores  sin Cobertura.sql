select * from prestadores 
where (cod_prestador  not in (select cd_prestador from cobertura_contrato) and
cod_prestador  in (select cod_prestador from contratos_prestadores)) and
est_prestador >= '0'


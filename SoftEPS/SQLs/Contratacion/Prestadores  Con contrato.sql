select * from prestadores 
where cod_prestador in (select cod_prestador from servicios_contrato)

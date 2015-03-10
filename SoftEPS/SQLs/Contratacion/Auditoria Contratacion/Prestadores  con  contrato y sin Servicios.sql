select * from contratos_prestadores where cod_prestador not in (select cod_prestador from servicios_contrato)


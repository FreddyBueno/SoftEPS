select * from contratos_prestadores
where cod_prestador not in (select cd_prestador from cobertura_contrato)



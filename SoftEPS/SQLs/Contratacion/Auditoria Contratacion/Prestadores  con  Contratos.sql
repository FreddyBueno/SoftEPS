select * from prestadores 
where cod_prestador in (select cod_prestador from contratos_prestadores)


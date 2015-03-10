select * from prestadores 
where (cod_prestador  not in (select cod_prestador from contratos_prestadores where contratos_prestadores.estado = '0' )) 



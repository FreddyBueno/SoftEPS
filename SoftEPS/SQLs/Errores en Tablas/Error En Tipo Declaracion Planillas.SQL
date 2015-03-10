select * from autoliquidacion (index ixperpre_percot_tipdec) 
where ((per_presentacion <> per_cotizacion) and (tip_declaracion = "D")) 
   or ((per_presentacion = per_cotizacion) and (tip_declaracion = "A"))

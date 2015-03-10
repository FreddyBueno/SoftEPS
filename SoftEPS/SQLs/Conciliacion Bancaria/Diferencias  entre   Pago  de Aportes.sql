select * from autoliquidacion 
where  tot_pagado <> (val_efectivo+val_cheque) and
cod_regional = "101" and fec_pago >= "2002/03/01" and fec_pago <= "2002/03/31"
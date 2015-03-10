SELECT * 
FROM autoliquidacion
WHERE fec_pago <= '01/01/1995' OR
               fec_pago > GETDATE()
ORDER BY cod_regional



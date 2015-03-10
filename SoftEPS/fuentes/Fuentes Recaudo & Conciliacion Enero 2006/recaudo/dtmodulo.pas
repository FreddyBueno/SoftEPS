UNIT DTMODULO;

INTERFACE

USES
  SYSUTILS, WINDOWS, CLASSES, GRAPHICS, CONTROLS,
  FORMS, DIALOGS,MASK,Math, DB, DBTABLES, IMGLIST, ADODB;

TYPE
    TDATAMODULE1 = CLASS(TDATAMODULE)
    DTSAUTOLIQUIDACION: TDATASOURCE;
    DTSDETALLEAUTO: TDATASOURCE;
    DTSEMPRESAS: TDATASOURCE;
    DTSAFILADOS: TDATASOURCE;
    DTSDOCUMENTO: TDATASOURCE;
    DTSAFILIADOAUTO: TDATASOURCE;
    DTSBANCOS: TDATASOURCE;
    dtsafiliaempresa: TDataSource;
    dtsdepartamentos: TDataSource;
    dtsciudades: TDataSource;
    DTBDATAMEC: TADOConnection;
    qryautoliquidacion: TADOQuery;
    qrydetalle: TADOQuery;
    qrydetalleNUM_PLANILLA: TStringField;
    qrydetalleAFI_TIPO_DOC: TStringField;
    qrydetalleAFI_NUMERO_DOC: TStringField;
    qrydetalleNOV_ING: TStringField;
    qrydetalleNOV_RET: TStringField;
    qrydetalleNOV_TDA: TStringField;
    qrydetalleNOV_TAA: TStringField;
    qrydetalleNOV_VSP: TStringField;
    qrydetalleNOV_VST: TStringField;
    qrydetalleNOV_SLN: TStringField;
    qrydetalleNOV_IGE: TStringField;
    qrydetalleNOV_LMA: TStringField;
    qrydetalleNOV_VAC: TStringField;
    qrydetalleDIA_COTIZADOS: TStringField;
    qrydetalleSAL_BASE: TBCDField;
    qrydetalleVAL_NETO_NOV: TBCDField;
    qrydetalleING_BASE_COT: TBCDField;
    qrydetalleCOT_OBLIGATORIA: TBCDField;
    qrydetalleNUM_INCAPACIDAD_EGR: TStringField;
    qrydetalleVAL_INCAPACIDAD_EGR: TBCDField;
    qrydetalleNUM_LICENCIA_MAT: TStringField;
    qrydetalleVAL_LICENCIA_MAT: TBCDField;
    qrydetalleVAL_UPC_ADI: TBCDField;
    qrydetalleVAL_TOTAL_COT: TBCDField;
    qrydetalleDET_ESTADO: TStringField;
    qrydetallePER_COTIZACION: TStringField;
    qrydetallePER_PRESENTACION: TStringField;
    qrydetalleCOD_OFICINA: TStringField;
    qrydetalleNUM_DECLARACION: TBCDField;
    qrydetalleNOM_AFILIADO: TStringField;
    qryempresas: TADOQuery;
    qryempresasTIP_DOCUMENTO: TStringField;
    qryempresasNUM_DOCUMENTO: TStringField;
    qryempresasCOD_SUCURSAL: TStringField;
    qryempresasCOD_ACTIVIDAD_ECO: TStringField;
    qryempresasCOD_ESTADO: TStringField;
    qryempresasCOD_OFICINA: TStringField;
    qryempresasCOD_REGIONAL: TStringField;
    qryempresasTIP_DOCUMENTO_ARP: TStringField;
    qryempresasNUM_DOCUMENTO_ARP: TStringField;
    qryempresasCOD_DEPARTAMENTO: TStringField;
    qryempresasCOD_CIUDAD: TStringField;
    qryempresasTIP_APORTANTE: TStringField;
    qryempresasNOM_EMPRESA: TStringField;
    qryempresasFEC_AFILIACION: TDateTimeField;
    qryempresasDIR_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA: TStringField;
    qryempresasTEL_EMPRESA2: TStringField;
    qryempresasURL_EMPRESA: TStringField;
    qryempresasEML_EMPRESA: TStringField;
    qryempresasTOT_EMPLEADOS: TStringField;
    qryempresasCOD_TIPO_PER: TStringField;
    qryempresasCOD_ZONA: TStringField;
    qryempresasCOD_DEPARTAMENTO_PAG: TStringField;
    qryempresasCOD_CIUDAD_PAG: TStringField;
    qryempresasCOD_PRESENTACION_COM: TStringField;
    qryempresasCOD_TIP_EMPRESA: TStringField;
    qryempresasTIP_DOCUMENTO_PEN: TStringField;
    qryempresasNUM_DOCUMENTO_PEN: TStringField;
    qryplanillas: TADOQuery;
    qryafiliadosempresa: TADOQuery;
    qrylistaempresas: TADOQuery;
    qrymaxpago: TADOQuery;
    qryrelacion_afiliados: TADOQuery;
    qrynovafiliados: TADOQuery;
    qryafiliadoss: TADOQuery;
    QryObtenermodalidad: TADOQuery;
    QryModalidad: TADOQuery;
    qrynotasautoliquidacion: TADOQuery;
    qrydetallepago: TADOQuery;
    qryciudades: TADOQuery;
    qrydepartamentos: TADOQuery;
    qrydepartamentosCOD_DEPARTAMENTO: TStringField;
    qrydepartamentosNOM_DEPARTAMENTO: TStringField;
    qrydetallepagoNUM_PLANILLA: TStringField;
    qrydetallepagoCOD_BANCO: TStringField;
    qrydetallepagoNUM_CUENTA: TStringField;
    qrydetallepagoVAL_CHEQUE: TBCDField;
    DTSModalidad: TDataSource;
    QryObtenermodalidadCOD_MODALIDAD_TRA: TStringField;
    QryObtenermodalidadNOM_MODALIDAD_TRA: TStringField;
    QryObtenermodalidadSALARIOS_MINIMOS: TBCDField;
    QryObtenermodalidadPOR_COTIZACION: TFloatField;
    qryafiliadossTIP_DOCUMENTO: TStringField;
    qryafiliadossNUM_DOCUMENTO: TStringField;
    qryafiliadossCOD_SEXO: TStringField;
    qryafiliadossCOD_TIPO_AFIL: TStringField;
    qryafiliadossCOD_MODALIDAD_TRA: TStringField;
    qryafiliadossCOD_ESTADO_CIV: TStringField;
    qryafiliadossCOD_ESTRATO: TStringField;
    qryafiliadossCOD_ESCOLARIDAD: TStringField;
    qryafiliadossCOD_PROFESION: TStringField;
    qryafiliadossCOD_ESTADO: TStringField;
    qryafiliadossCOD_OFICINA: TStringField;
    qryafiliadossCOD_REGIONAL: TStringField;
    qryafiliadossPRI_NOMBRE: TStringField;
    qryafiliadossSEG_NOMBRE: TStringField;
    qryafiliadossPRI_APELLIDO: TStringField;
    qryafiliadossSEG_APELLIDO: TStringField;
    qryafiliadossFEC_NACIMIENTO: TDateTimeField;
    qryafiliadossFEC_AFILIACION_SIS: TDateTimeField;
    qryafiliadossFEC_AFILIACION_UNI: TDateTimeField;
    qryafiliadossEPS_TIP_DOC: TStringField;
    qryafiliadossEPS_NUM_DOC: TStringField;
    qryafiliadossCOD_DEPARTAMENTO_RES: TStringField;
    qryafiliadossCOD_CIUDAD_RES: TStringField;
    qryafiliadossCOD_BARRIO_RES: TStringField;
    qryafiliadossCOD_ZONA: TStringField;
    qryafiliadossACE_TIP_DOC: TStringField;
    qryafiliadossACE_NUMERO_DOC: TStringField;
    qryafiliadossCOD_DISCAPACIDAD: TStringField;
    qryafiliadossNUM_SEMANA_COTIZA: TBCDField;
    qryafiliadossFEC_RADICACION: TDateTimeField;
    qryafiliadossNUM_FORMATO_AFIL: TStringField;
    qryafiliadossDIR_AFILIADO_RES: TStringField;
    qryafiliadossTEL_AFILIADO_RES: TStringField;
    qryafiliadossTEL_AFILIADO_RES2: TStringField;
    qryafiliadossCEL_AFILIADO: TStringField;
    qryafiliadossEML_AFILIADO: TStringField;
    qryafiliadossFEC_ULTIMA_NOV: TDateTimeField;
    qryafiliadossTIP_DOCUMENTO_IPS: TStringField;
    qryafiliadossNUM_DOCUMENTO_IPS: TStringField;
    qryafiliadossTIP_DOCUMENTO_MED: TStringField;
    qryafiliadossNUM_DOCUMENTO_MED: TStringField;
    qryafiliadossTIP_DOCUMENTO_ODO: TStringField;
    qryafiliadossNUM_DOCUMENTO_ODO: TStringField;
    qryafiliadossSEM_COTIZACION: TBCDField;
    qrynovafiliadosCOD_NOVEDAD_AFIL: TBCDField;
    qrynovafiliadosNOV_CODIGO: TStringField;
    qrynovafiliadosTIP_DOCUMENTO: TStringField;
    qrynovafiliadosNUM_DOCUMENTO: TStringField;
    qrynovafiliadosCOD_OFICINA: TStringField;
    qrynovafiliadosCOD_REGIONAL: TStringField;
    qrynovafiliadosUSU_TIPO_DOC: TStringField;
    qrynovafiliadosUSU_NUMERO_DOC: TStringField;
    qrynovafiliadosFEC_NOVEDAD_AFIL: TDateTimeField;
    qrynovafiliadosNOM_CAMPO: TStringField;
    qrynovafiliadosDAT_CAMPO_ANT: TStringField;
    qrynovafiliadosNOM_TABLA: TStringField;
    qrynovafiliadosDAT_CAMPO_DES: TStringField;
    qrynovafiliadosFEC_EVENTO: TDateTimeField;
    qrynovafiliadosFEC_APLICATIVO: TDateTimeField;
    qrynovafiliadosTIP_DOCUMENTO_EMP: TStringField;
    qrynovafiliadosNUM_DOCUMENTO_EMP: TStringField;
    qrynovafiliadosCOD_SUCURSAL: TStringField;
    qrynovafiliadosNUM_PLANILLA: TStringField;
    qrynovafiliadosNOV890: TStringField;
    qryrelacion_afiliadosTIP_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_COT: TStringField;
    qryrelacion_afiliadosTIP_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosNUM_DOCUMENTO_BEN: TStringField;
    qryrelacion_afiliadosFEC_INCLUSION_NOV: TDateTimeField;
    qryrelacion_afiliadosCOD_PARENTESCO: TStringField;
    qryrelacion_afiliadosFEC_EXCLUSION_NOV: TDateTimeField;
    qryrelacion_afiliadosCOD_ESTADO: TStringField;
    qryrelacion_afiliadosCOD_RELACION_ADI: TStringField;
    qrylistaempresasTIP_DOCUMENTO: TStringField;
    qrylistaempresasNUM_DOCUMENTO: TStringField;
    qrylistaempresasCOD_SUCURSAL: TStringField;
    qrylistaempresasTIP_APORTANTE: TStringField;
    qrylistaempresasNOM_EMPRESA: TStringField;
    qryplanillasNUM_PLANILLA: TStringField;
    qryplanillasEMP_TIPO_DOC: TStringField;
    qryplanillasEMP_NUMERO_DOC: TStringField;
    qryplanillasCOD_SUCURSAL: TStringField;
    qryplanillasTIP_DECLARACION: TStringField;
    qryplanillasFEC_PAGO: TDateTimeField;
    qryplanillasNUM_PLANILLA_CORR: TStringField;
    qryplanillasPER_COTIZACION: TStringField;
    qryplanillasPER_PRESENTACION: TStringField;
    qryplanillasTOT_PLANILLA: TBCDField;
    qryplanillasTOT_APORTE_PER: TBCDField;
    qryplanillasTOT_INCAPACIDAD: TBCDField;
    qryplanillasTOT_LICENCIAS: TBCDField;
    qryplanillasTOT_APORTE: TBCDField;
    qryplanillasINT_MORA: TBCDField;
    qryplanillasTOT_APORTE_MMORA: TBCDField;
    qryplanillasTOT_SALDO_FAV: TBCDField;
    qryplanillasTOT_UPC: TBCDField;
    qryplanillasTOT_PAGADO: TBCDField;
    qryplanillasCOD_BANCO: TStringField;
    qryplanillasNUM_CUENTA: TStringField;
    qryplanillasVAL_EFECTIVO: TBCDField;
    qryplanillasVAL_CHEQUE: TBCDField;
    qryplanillasEST_PLANILLA: TStringField;
    qryplanillasCOD_REGIONAL: TStringField;
    qryplanillasCOD_OFICINA: TStringField;
    qryplanillasNUM_DECLARACION: TBCDField;
    qryplanillasCRU_CONCILIACION: TStringField;
    qryplanillasFEC_DIGITACION: TDateTimeField;
    qryplanillasTIP_DOC_USUARIO: TStringField;
    qryplanillasNUM_DOC_USUARIO: TStringField;
    qryplanillasFEC_MODIFICACION: TDateTimeField;
    qryplanillasNO_INCAP_PAG: TStringField;
    qryplanillasVAL_INCAP_PAG: TBCDField;
    qryplanillasNO_LICEN_PAG: TStringField;
    qryplanillasVAL_LICEN_PAG: TBCDField;
    qryplanillasNO_MESES_MORA: TBCDField;
    qryplanillasNO_PLANINILLA_ANT: TStringField;
    qryplanillasVAL_NETO_UPC: TBCDField;
    qryplanillasVAL_INTERES_UPC: TBCDField;
    qryplanillasVAL_APORMASINT_UPC: TBCDField;
    qryplanillasVAL_SALFAVOR_UPC: TBCDField;
    qryplanillasVAL_PAGO_UPC: TBCDField;
    qryplanillasNUM_LOTE: TStringField;
    qryplanillasNOM_EMPRESA: TStringField;
    qrydetplanillas: TADOQuery;
    qrydetplanillasNUM_PLANILLA: TStringField;
    qrydetplanillasAFI_TIPO_DOC: TStringField;
    qrydetplanillasAFI_NUMERO_DOC: TStringField;
    qrydetplanillasNOV_ING: TStringField;
    qrydetplanillasNOV_RET: TStringField;
    qrydetplanillasNOV_TDA: TStringField;
    qrydetplanillasNOV_TAA: TStringField;
    qrydetplanillasNOV_VSP: TStringField;
    qrydetplanillasNOV_VST: TStringField;
    qrydetplanillasNOV_SLN: TStringField;
    qrydetplanillasNOV_IGE: TStringField;
    qrydetplanillasNOV_LMA: TStringField;
    qrydetplanillasNOV_VAC: TStringField;
    qrydetplanillasDIA_COTIZADOS: TStringField;
    qrydetplanillasSAL_BASE: TBCDField;
    qrydetplanillasVAL_NETO_NOV: TBCDField;
    qrydetplanillasING_BASE_COT: TBCDField;
    qrydetplanillasCOT_OBLIGATORIA: TBCDField;
    qrydetplanillasNUM_INCAPACIDAD_EGR: TStringField;
    qrydetplanillasVAL_INCAPACIDAD_EGR: TBCDField;
    qrydetplanillasNUM_LICENCIA_MAT: TStringField;
    qrydetplanillasVAL_LICENCIA_MAT: TBCDField;
    qrydetplanillasVAL_UPC_ADI: TBCDField;
    qrydetplanillasVAL_TOTAL_COT: TBCDField;
    qrydetplanillasDET_ESTADO: TStringField;
    qrydetplanillasPER_COTIZACION: TStringField;
    qrydetplanillasPER_PRESENTACION: TStringField;
    qrydetplanillasCOD_OFICINA: TStringField;
    qrydetplanillasNUM_DECLARACION: TBCDField;
    qrydetplanillasNOM_AFILIADO: TStringField;
    qrypagosafiliados: TADOQuery;
    qrygetdate: TADOQuery;
    qrydocumentos: TADOQuery;
    qryafiliados: TADOQuery;
    qryafiliadoauto: TADOQuery;
    qrybancos: TADOQuery;
    qrycompania: TADOQuery;
    qrycompaniaTIP_DOCUMENTO: TStringField;
    qrycompaniaNUM_DOCUMENTO: TStringField;
    qrycompaniaNOM_EPS: TStringField;
    qrycompaniaFEC_INCLUSION: TDateTimeField;
    qrycompaniaCOD_EPS: TStringField;
    qrycompaniaDIR_EPS: TStringField;
    qrycompaniaTEL_EPS: TStringField;
    qrycompaniaFAX_EPS: TStringField;
    qrycompaniaREP_LEGAL: TStringField;
    qrycompaniaEML_EPS: TStringField;
    qrycompaniaMAX_SALMIN: TBCDField;
    qryafiliadoautoNUM_PLANILLA: TStringField;
    qryafiliadoautoFEC_PAGO: TDateTimeField;
    qrydocumentosTIP_DOCUMENTO: TStringField;
    qrydocumentosNOM_DOCUMENTO: TStringField;
    qrygetdateFECHA: TDateTimeField;
    qrypagosafiliadosFEC_PAGO: TDateTimeField;
    qrypagosafiliadosPER_COTIZACION: TStringField;
    qrypagosafiliadosCOT_OBLIGATORIA: TBCDField;
    qrypagosafiliadosDIA_COTIZADOS: TStringField;
    qryvaloresupc: TADOQuery;
    qryempresaupc: TADOQuery;
    qrydetalleupc: TADOQuery;
    qrydiagnosticos: TADOQuery;
    qryprestadores: TADOQuery;
    qryestrato: TADOQuery;
    qryvalorescompensacion: TADOQuery;
    qryvalorescompensacionANO: TDateTimeField;
    qryvalorescompensacionSAL_MINIMO: TBCDField;
    qryvalorescompensacionUPC: TBCDField;
    qryvalorescompensacionPYP: TBCDField;
    qryvalorescompensacionSOL: TBCDField;
    qryvalorescompensacionRIESGO: TBCDField;
    qryvalorescompensacionVAL_UPC_DIA_NORMAL: TBCDField;
    qryvalorescompensacionVAL_UPC_DIA_ESPECIAL: TBCDField;
    qryvalorescompensacionPOR_COTIZACION: TBCDField;
    qryvalorescompensacionPOR_ENFERMEDAD_GENERAL: TBCDField;
    qryvalorescompensacionPOR_PROVISION_INC: TBCDField;
    qryvalorescompensacionPOR_PYP_LIQUIDACION: TBCDField;
    qryvalorescompensacionPOR_SOLIDARIDAD_LIQUIDACION: TBCDField;
    qryestratoCOD_BANCO: TStringField;
    qryestratoCOD_SUCURSAL: TStringField;
    qryestratoNUM_DOCUMENTO: TStringField;
    qryestratoNUM_PLANILLA: TStringField;
    qryestratoFEC_RECAUDO: TDateTimeField;
    qryestratoVAL_CONSIGNACION: TBCDField;
    qryestratoTIP_MOVIMIENTO: TStringField;
    qryestratoEST_CONCILIACION: TStringField;
    qryestratoFEC_PLANILLA_CON: TDateTimeField;
    qrydetalleupcNUM_PLANILLA: TStringField;
    qrydetalleupcAFI_TIP_DOCUMENTO: TStringField;
    qrydetalleupcAFI_NUM_DOCUMENTO: TStringField;
    qrydetalleupcAFI_TIP_DOC_ADICIONAL: TStringField;
    qrydetalleupcAFI_NUM_DOC_ADICIONAL: TStringField;
    qrydetalleupcPER_COTIZACION: TStringField;
    qrydetalleupcPER_PRESENTACION: TStringField;
    qrydetalleupcVAL_PAGADO: TBCDField;
    qrydetalleupcCOD_ESTADO: TStringField;
    qryempresaupcTIP_DOCUMENTO_COT: TStringField;
    qryempresaupcNUM_DOCUMENTO_COT: TStringField;
    qryempresaupcTIP_DOCUMENTO_BEN: TStringField;
    qryempresaupcNUM_DOCUMENTO_BEN: TStringField;
    qryempresaupcFEC_INCLUSION_NOV: TDateTimeField;
    qryempresaupcCOD_PARENTESCO: TStringField;
    qryempresaupcFEC_EXCLUSION_NOV: TDateTimeField;
    qryempresaupcCOD_ESTADO: TStringField;
    qryempresaupcCOD_RELACION_ADI: TStringField;
    qryvaloresupcVAL_ESTRUCTURA_COST: TBCDField;
    qryvaloresupcINI_GRUPO_ETA: TBCDField;
    qryvaloresupcFIN_GRUPO_ETA: TBCDField;
    qryvaloresupcSEXO_GRUPO_ETA: TStringField;
    qryvaloresupcVALOR_NORMAL: TBCDField;
    qryvaloresupcPROMOCION: TBCDField;
    qryvaloresupcSOL: TBCDField;
    qrycartera: TADOQuery;
    qryincapacidades: TADOQuery;
    qrytipos: TADOQuery;
    qrytiposTIP_APORTANTE: TStringField;
    qrytiposDIG_FINAL: TStringField;
    qrytiposDIA_HABIL: TStringField;
    qrycarteraTIP_DOCUMENTO: TStringField;
    qrycarteraNUM_DOCUMENTO: TStringField;
    qrycarteraTIP_DOCUMENTO_EMP: TStringField;
    qrycarteraNUM_DOCUMENTO_EMP: TStringField;
    qrycarteraCOD_SUCURSAL_EMP: TStringField;
    qrycarteraPER_COMPENSACION: TStringField;
    qrycarteraTIPO_MORA: TStringField;
    qrycarteraVALOR_MORA: TBCDField;
    qrycarteraVALOR_UPC: TBCDField;
    qrycarteraCOD_TIPO_AFIL: TStringField;
    qrycarteraTIP_DOCUMENTO_COT: TStringField;
    qrycarteraNUM_DOCUMENTO_COT: TStringField;
    qrycarteraINTERES: TBCDField;
    qryupc: TADOQuery;
    qrydetincapacidad: TADOQuery;
    qrypagoupc: TADOQuery;
    qrypagoupcNUM_PLANILLA: TStringField;
    qrypagoupcAFI_TIP_DOCUMENTO: TStringField;
    qrypagoupcAFI_NUM_DOCUMENTO: TStringField;
    qrypagoupcAFI_TIP_DOC_ADICIONAL: TStringField;
    qrypagoupcAFI_NUM_DOC_ADICIONAL: TStringField;
    qrypagoupcPER_COTIZACION: TStringField;
    qrypagoupcPER_PRESENTACION: TStringField;
    qrypagoupcVAL_PAGADO: TBCDField;
    qrypagoupcCOD_ESTADO: TStringField;
    qrydetincapacidadNUM_INCAPACIDAD: TStringField;
    qrydetincapacidadPER_PAGO_INCAP: TDateTimeField;
    qrydetincapacidadDIA_PAGAR_INCAP: TBCDField;
    qrydetincapacidadVAL_PAGAR_INCAP: TBCDField;
    qrydetincapacidadTIP_PAGO_INCAP: TStringField;
    qrydetincapacidadFEC_PAGO_INCAP: TDateTimeField;
    qrydetincapacidadNUM_COMPROBANTE: TStringField;
    qrydetincapacidadPER_PRESENTADO: TStringField;
    qrydetincapacidadEST_DET_PLANILLA: TStringField;
    qrydetincapacidadVAL_DESCONTADO: TBCDField;
    qryupcTIP_DOCUMENTO_BEN: TStringField;
    qryupcNUM_DOCUMENTO_BEN: TStringField;
    qryupcPRI_APELLIDO: TStringField;
    qryupcSEG_APELLIDO: TStringField;
    qryupcPRI_NOMBRE: TStringField;
    qryupcSEG_NOMBRE: TStringField;
    qryupcCOD_SEXO: TStringField;
    qryupcTIP_DOCUMENTO_COT: TStringField;
    qryupcNUM_DOCUMENTO_COT: TStringField;
    qryupcFEC_NACIMIENTO: TDateTimeField;
    qrydiagnosticosCOD_DIAGNOSTICO: TStringField;
    qrydiagnosticosNOM_DIAGNSOTICO: TStringField;
    qrydiagnosticosRANGO_SEXO: TStringField;
    qrydiagnosticosEDA_MININA: TBCDField;
    qrydiagnosticosEDA_MAXIMA: TBCDField;
    qrydiagnosticosNOTOFICA: TStringField;
    qrydiagnosticosCODGRUPO: TStringField;
    qryprogramas: TADOQuery;
    qryprogramasCOD_APLICACION: TStringField;
    qryprogramasNOM_APLICACION: TStringField;
    qryprogramasVERSIONES: TStringField;
    qryprogramasAPLICACION: TBytesField;
    qryprogramasORIGEN: TStringField;
    qryprogramasDESTINO: TStringField;
    qryprogramasnom_exe: TStringField;
    qrysegudidad: TADOQuery;
    qrysegudidadCOD_APLICACION: TStringField;
    qrysegudidadNOM_APLICACION: TStringField;
    qrysegudidadCOD_MENU: TStringField;
    qrysegudidadCOD_CAMPO: TStringField;
    qrypermisos: TADOQuery;
    qrypermisosCOD_USUARIO: TStringField;
    qrypermisosCOD_APLICACION: TStringField;
    qrypermisosCOD_MENU: TStringField;
    qrypermisosCOD_CAMPO: TStringField;
    QryModalidadCOD_MODALIDAD_TRA: TStringField;
    QryModalidadNOM_MODALIDAD_TRA: TStringField;
    QryModalidadPOR_COTIZACION: TBCDField;
    QryModalidadSALARIOS_MINIMOS: TBCDField;
    qryprestadoresNIT_PRESTADOR: TStringField;
    qryprestadoresNOM_PRESTADOR: TStringField;
    qryprestadoresTIP_IDENTIFICACION: TStringField;
    qryprestadoresCOD_PRESTADOR: TStringField;
    qryprestadoresNUM_DEPARTAMENTO: TStringField;
    qryprestadoresNUM_CIUDAD: TStringField;
    qryprestadoresDIR_PRINCIPAL: TStringField;
    qryprestadoresNUM_TELEFONO: TStringField;
    qryprestadoresNUM_FAX: TStringField;
    qryprestadoresREP_LEGAL: TStringField;
    qryprestadoresNIV_ATENCION: TStringField;
    qryprestadoresTIP_PRESTADOR: TStringField;
    qryprestadoresCLA_PRESTADOR: TStringField;
    qryprestadoresREC_COPAGO: TStringField;
    qryprestadoresREC_CUOTAMODERADORA: TStringField;
    qryprestadoresEST_PRESTADOR: TBCDField;
    qryprestadoresCOR_ELECTRONICO: TStringField;
    qryprestadoresTIP_USUARIO: TStringField;
    qryprestadoresFEC_DIGITACION: TDateTimeField;
    qryprestadoresNUM_CARPETA: TStringField;
    qryprestadoresMOD_RECAUDO: TBCDField;
    qryprestadoresTIP_NATURALEZA: TBCDField;
    qryprestadoresCOD_ESPECIALIDAD: TBCDField;
    qryprestadoresdoc_representante: TStringField;
    Database1: TDatabase;
    qryautoliquidacionNUM_PLANILLA: TStringField;
    qryautoliquidacionEMP_TIPO_DOC: TStringField;
    qryautoliquidacionEMP_NUMERO_DOC: TStringField;
    qryautoliquidacionCOD_SUCURSAL: TStringField;
    qryautoliquidacionTIP_DECLARACION: TStringField;
    qryautoliquidacionFEC_PAGO: TDateTimeField;
    qryautoliquidacionNUM_PLANILLA_CORR: TStringField;
    qryautoliquidacionPER_COTIZACION: TStringField;
    qryautoliquidacionPER_PRESENTACION: TStringField;
    qryautoliquidacionTOT_PLANILLA: TBCDField;
    qryautoliquidacionTOT_APORTE_PER: TBCDField;
    qryautoliquidacionTOT_INCAPACIDAD: TBCDField;
    qryautoliquidacionTOT_LICENCIAS: TBCDField;
    qryautoliquidacionTOT_APORTE: TBCDField;
    qryautoliquidacionINT_MORA: TBCDField;
    qryautoliquidacionTOT_APORTE_MMORA: TBCDField;
    qryautoliquidacionTOT_SALDO_FAV: TBCDField;
    qryautoliquidacionTOT_UPC: TBCDField;
    qryautoliquidacionTOT_PAGADO: TBCDField;
    qryautoliquidacionCOD_BANCO: TStringField;
    qryautoliquidacionNUM_CUENTA: TStringField;
    qryautoliquidacionVAL_EFECTIVO: TBCDField;
    qryautoliquidacionVAL_CHEQUE: TBCDField;
    qryautoliquidacionEST_PLANILLA: TStringField;
    qryautoliquidacionCOD_REGIONAL: TStringField;
    qryautoliquidacionCOD_OFICINA: TStringField;
    qryautoliquidacionNUM_DECLARACION: TBCDField;
    qryautoliquidacionCRU_CONCILIACION: TStringField;
    qryautoliquidacionFEC_DIGITACION: TDateTimeField;
    qryautoliquidacionTIP_DOC_USUARIO: TStringField;
    qryautoliquidacionNUM_DOC_USUARIO: TStringField;
    qryautoliquidacionFEC_MODIFICACION: TDateTimeField;
    qryautoliquidacionNO_INCAP_PAG: TStringField;
    qryautoliquidacionVAL_INCAP_PAG: TBCDField;
    qryautoliquidacionNO_LICEN_PAG: TStringField;
    qryautoliquidacionVAL_LICEN_PAG: TBCDField;
    qryautoliquidacionNO_MESES_MORA: TBCDField;
    qryautoliquidacionNO_PLANINILLA_ANT: TStringField;
    qryautoliquidacionVAL_NETO_UPC: TBCDField;
    qryautoliquidacionVAL_INTERES_UPC: TBCDField;
    qryautoliquidacionVAL_APORMASINT_UPC: TBCDField;
    qryautoliquidacionVAL_SALFAVOR_UPC: TBCDField;
    qryautoliquidacionVAL_PAGO_UPC: TBCDField;
    qryautoliquidacionNUM_LOTE: TStringField;
    qryautoliquidacionNOM_EMPRESA: TStringField;
    dtsdiagnosticos: TDataSource;
    qryincapacidadespat: TADOQuery;
    qrypagoininterrumpido: TADOQuery;
    qryafil4sem: TADOQuery;
    qryafil4semTIP_DOCUMENTO: TStringField;
    qryafil4semNUM_DOCUMENTO: TStringField;
    qryafil4semCOD_SEXO: TStringField;
    qryafil4semCOD_TIPO_AFIL: TStringField;
    qryafil4semCOD_MODALIDAD_TRA: TStringField;
    qryafil4semCOD_ESTADO_CIV: TStringField;
    qryafil4semCOD_ESTRATO: TStringField;
    qryafil4semCOD_ESCOLARIDAD: TStringField;
    qryafil4semCOD_PROFESION: TStringField;
    qryafil4semCOD_ESTADO: TStringField;
    qryafil4semCOD_OFICINA: TStringField;
    qryafil4semCOD_REGIONAL: TStringField;
    qryafil4semPRI_NOMBRE: TStringField;
    qryafil4semSEG_NOMBRE: TStringField;
    qryafil4semPRI_APELLIDO: TStringField;
    qryafil4semSEG_APELLIDO: TStringField;
    qryafil4semFEC_NACIMIENTO: TDateTimeField;
    qryafil4semFEC_AFILIACION_SIS: TDateTimeField;
    qryafil4semFEC_AFILIACION_UNI: TDateTimeField;
    qryafil4semEPS_TIP_DOC: TStringField;
    qryafil4semEPS_NUM_DOC: TStringField;
    qryafil4semCOD_DEPARTAMENTO_RES: TStringField;
    qryafil4semCOD_CIUDAD_RES: TStringField;
    qryafil4semCOD_BARRIO_RES: TStringField;
    qryafil4semCOD_ZONA: TStringField;
    qryafil4semACE_TIP_DOC: TStringField;
    qryafil4semACE_NUMERO_DOC: TStringField;
    qryafil4semCOD_DISCAPACIDAD: TStringField;
    qryafil4semNUM_SEMANA_COTIZA: TBCDField;
    qryafil4semFEC_RADICACION: TDateTimeField;
    qryafil4semNUM_FORMATO_AFIL: TStringField;
    qryafil4semDIR_AFILIADO_RES: TStringField;
    qryafil4semTEL_AFILIADO_RES: TStringField;
    qryafil4semTEL_AFILIADO_RES2: TStringField;
    qryafil4semCEL_AFILIADO: TStringField;
    qryafil4semEML_AFILIADO: TStringField;
    qryafil4semFEC_ULTIMA_NOV: TDateTimeField;
    qryafil4semTIP_DOCUMENTO_IPS: TStringField;
    qryafil4semNUM_DOCUMENTO_IPS: TStringField;
    qryafil4semTIP_DOCUMENTO_MED: TStringField;
    qryafil4semNUM_DOCUMENTO_MED: TStringField;
    qryafil4semTIP_DOCUMENTO_ODO: TStringField;
    qryafil4semNUM_DOCUMENTO_ODO: TStringField;
    qryafil4semSEM_COTIZACION: TBCDField;
    qryincapacidadesNUM_INCAPACIDAD: TStringField;
    qryincapacidadesTIP_INCAPACIDAD: TStringField;
    qryincapacidadesFEC_EXPEDICION: TDateTimeField;
    qryincapacidadesFEC_FALLO_TUTELA: TDateTimeField;
    qryincapacidadesNUMERO_TUTELA: TStringField;
    qryincapacidadesTIP_DOCEMPRESA: TStringField;
    qryincapacidadesNUM_DOCEMPRESA: TStringField;
    qryincapacidadesAFI_TIPO_DOC: TStringField;
    qryincapacidadesAFI_NUMERO_DOC: TStringField;
    qryincapacidadesCOD_DIAGNOSTICO: TStringField;
    qryincapacidadesCOD_PRESTADOR: TStringField;
    qryincapacidadesNOM_PRESTADOR: TStringField;
    qryincapacidadesDIA_INCAPACIDAD: TStringField;
    qryincapacidadesDIA_LIQUIDADOS: TStringField;
    qryincapacidadesFEC_INICIO: TDateTimeField;
    qryincapacidadesPRO_INCAPACIDAD: TStringField;
    qryincapacidadesSAL_BASE: TBCDField;
    qryincapacidadesPRO_SALARIO_LIQUI: TBCDField;
    qryincapacidadesVAL_INCAPACIDAD: TBCDField;
    qryincapacidadesEST_INCAPACIDAD: TStringField;
    qryincapacidadesCOD_REGIONAL: TStringField;
    qryincapacidadesCOD_OFICINA: TStringField;
    qryincapacidadesFEC_DIGITACION: TDateTimeField;
    qryincapacidadesTIP_DOC_USUARIO: TStringField;
    qryincapacidadesTIP_NUM_USUARIO: TStringField;
    qryincapacidadesFEC_TERMINACION: TDateTimeField;
    qryincapacidadesFEC_MODIFICACION: TDateTimeField;
    qryincapacidadesNO_PRORROGA: TStringField;
    qryincapacidadesTOT_DIAS_PRORROGA: TStringField;
    qryincapacidadesNUM_RECEPCION: TStringField;
    qryincapacidadesFEC_NOTIFICACION: TDateTimeField;
    qryincapacidadesMED_NOTIFICACION: TStringField;
    qryincapacidadesNO_GUIA: TStringField;
    qryaprobaciones: TADOQuery;
    qryaprobacionesACTIVADO: TBooleanField;
    qryaprobacionesTIPO: TStringField;
    qryaprobacionesCAUSAL_DE_NO_APROBACION: TStringField;
    qryafiliadostip_documento_emp: TStringField;
    qryafiliadosnum_documento_emp: TStringField;
    qryafiliadostip_documento_afi: TStringField;
    qryafiliadosnum_documento_afi: TStringField;
    qryafiliadospri_apellido: TStringField;
    qryafiliadosseg_apellido: TStringField;
    qryafiliadospri_nombre: TStringField;
    qryafiliadosseg_nombre: TStringField;
    qryafiliadosval_sueldo_afil: TBCDField;
    qryafiliadosfec_ingreso_uni: TDateTimeField;
    qryafiliadosfec_egreso_uni: TDateTimeField;
    qryafiliadoscod_estado: TStringField;
    qryafiliadosfec_nacimiento: TDateTimeField;
    qryafiliadoscod_sexo: TStringField;
    qryafiliadoscod_modalidad_tra: TStringField;
    qryafiliadosempresaCOD_OCUPACION: TStringField;
    qryafiliadosempresaTIP_DOCUMENTO_AFI: TStringField;
    qryafiliadosempresaNUM_DOCUMENTO_AFI: TStringField;
    qryafiliadosempresaTIP_DOCUMENTO_EMP: TStringField;
    qryafiliadosempresaNUM_DOCUMENTO_EMP: TStringField;
    qryafiliadosempresaCOD_SUCURSAL: TStringField;
    qryafiliadosempresaCOD_ESTADO: TStringField;
    qryafiliadosempresaVAL_SUELDO_AFIL: TBCDField;
    qryafiliadosempresaFEC_INGRESO_UNI: TDateTimeField;
    qryafiliadosempresaFEC_EGRESO_UNI: TDateTimeField;
    qryafiliadosempresaCOD_DEPARTAMENTO_LAB: TStringField;
    qryafiliadosempresaCOD_CIUDAD_LAB: TStringField;
    qryafiliadosempresaDIR_AFILIADO_LAB: TStringField;
    qryafiliadosempresaTEL_AFILIADO_LAB: TStringField;
    qryafiliadosempresaTEL_AFILIADO_LAB2: TStringField;
    qryafiliadosempresaCOD_TIPO_SAL: TStringField;
    qryafiliadosempresaCOD_ZONA: TStringField;
    qryafiliadosempresaFEC_ING_EMPRESA: TDateTimeField;
    qryafiliadosempresaCOD_MODALIDAD_TRA: TStringField;
    qryafiliadosempresaFEC_ULTIMA_NOV: TDateTimeField;
    qrybancosCOD_BANCO: TStringField;
    qrybancosNOM_BANCO: TStringField;
    qrybancosCTA_BANCO: TStringField;
    qrybancosDIR_BANCO: TStringField;
    qrybancosTIP_DOCUMENTO: TStringField;
    qrybancosNUM_DOCUMENTO: TStringField;
    qrybancosCOD_DEPARTAMENTO: TStringField;
    qrybancosCOD_CIUDAD: TStringField;
    qrybancosTIPO_RECAUDO: TStringField;
    qrybancosEST_BANCO: TStringField;
    qrybancosCOD_CUENTA: TStringField;
    qrybancosTELEFONO: TStringField;
    qrybancosCONTACTO: TStringField;
    qrypromsal: TADOQuery;
    qryfecincapacidad: TADOQuery;
    qryfecincapacidadPER_COTIZACION: TStringField;
    qrymaxpagoPER_COTIZACION: TStringField;
    qrypromsalING_BASE_COT: TBCDField;
    qrynotasautoliquidacionNUM_PLANILLA: TStringField;
    qrynotasautoliquidacionTIP_DOC_EMPRESA: TStringField;
    qrynotasautoliquidacionNUM_DOC_EMPRESA: TStringField;
    qrynotasautoliquidacionTIP_NOTA: TStringField;
    qrynotasautoliquidacionVAL_NOTA: TBCDField;
    qrynotasautoliquidacionNUM_COMP_DES: TStringField;
    qrynotasautoliquidacionFEC_DESCUENTO: TDateTimeField;
    qrynotasautoliquidacionTIP_DESCUENTO: TStringField;
    qrynotasautoliquidacionTIP_NOTA2: TStringField;
    qrynotasautoliquidacionPER_PAGO_NOTA: TDateTimeField;
    qrydiasafil: TADOQuery;
    qrytrasafil: TADOQuery;
    qrymesesafil: TADOQuery;
    qrytrasafilMESTRAS: TIntegerField;
    qrydiasafilNODIAS: TIntegerField;
    function valorupcpagar (edad : integer; ano: string;sexo : string):real;
    function promedioupcacu241(sexo:string;edad: integer;fecha:tdatetime):real;
    function  estado_pago(peridos,tipo,numero,tipoem,numeroemp,dias,ingresobase:string):string;
    procedure LiberarMemoria;
    function FDOM(Date: TDateTime): TDateTime;
    function LDOM(Date: TDateTime): TDateTime;
    function alinearcero (codigo : string;catidad : integer) : string;
    //FUNCTION RELLENARCEROS( CADENA: STRING): STRING;

  PRIVATE
    { PRIVATE DECLARATIONS }
  PUBLIC
    { PUBLIC DECLARATIONS }
  END;

VAR
  DATAMODULE1: TDATAMODULE1;
  codaplicativo : string;
IMPLEMENTATION

USES UPRINCIPAL, UGLOBAL;

{$R *.DFM}




function TDATAMODULE1.alinearcero(codigo: string;
  catidad: integer): string;
var largo,i : integer;
    valores : string;
begin
  valores :=  codigo;
   largo :=length(codigo);
        for i := largo to  catidad do
          begin
          valores := '0'+ valores ;
          end;
          alinearcero := valores;

end;

function TDATAMODULE1.estado_pago(peridos, tipo, numero, tipoem, numeroemp,
  dias,ingresobase: string): string;
  VAR MES,PORCENTAJE : REAL;
begin

FRMPRINCIPAL.Salariobase(peridos);
estado_pago := 'CIE';


    DATAMODULE1.QRYEMPRESAS.CLOSE;
    DATAMODULE1.QRYEMPRESAS.Parameters[0].VALUE := TRIM(tipoem);
    DATAMODULE1.QRYEMPRESAS.Parameters[1].VALUE := TRIM(numeroemp);
    DATAMODULE1.QRYEMPRESAS.OPEN;


        IF DATAMODULE1.QRYEMPRESAS.RECORDCOUNT = 0 THEN
        BEGIN
        estado_pago := 'NRE';
        exit
        end;
        // verifcar  si no es  NRS Nuevamente
                DATAMODULE1.QRYAFILIADOS.CLOSE;
                DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL)');
                DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(tipo);
                DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(numero);
                DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := FloatToDateTime(STRTODATE('01/' + peridos));
                DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := FloatToDateTime(STRTODATE('28/' + peridos));
                DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := FloatToDateTime(STRTODATE('01/' + peridos));
                DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := FloatToDateTime(STRTODATE('28/' + peridos));
                DATAMODULE1.QRYAFILIADOS.OPEN;
                IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT > 0 THEN
                   BEGIN

                        DATAMODULE1.QRYAFILIADOS.CLOSE;
                        DATAMODULE1.QRYAFILIADOS.SQL.CLEAR;
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBRE, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPRESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('FROM AFILIADOS_EMPRESAS,AFILIADOS T1');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI = NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI = :"CC" AND NUM_DOCUMENTO_AFI = :"DOCUMENTO" AND ((FEC_INGRESO_UNI <= :"FECHAIN") OR (FEC_INGRESO_UNI <= :"FECHAINI")) AND ');
                        DATAMODULE1.QRYAFILIADOS.SQL.ADD('(((FEC_EGRESO_UNI >= :"FECHAF") OR (FEC_EGRESO_UNI >= :"FECHAFI")) OR FEC_EGRESO_UNI IS NULL) AND TIP_DOCUMENTO_EMP = :"TIPOEM" AND  NUM_DOCUMENTO_EMP = :"NUMEM"');
                        DATAMODULE1.QRYAFILIADOS.Parameters[0].VALUE := TRIM(tipo);
                        DATAMODULE1.QRYAFILIADOS.Parameters[1].VALUE := TRIM(numero);
                        DATAMODULE1.QRYAFILIADOS.Parameters[2].VALUE := FloatToDateTime(STRTODATE('01/' + peridos));
                        DATAMODULE1.QRYAFILIADOS.Parameters[3].VALUE := FloatToDateTime(STRTODATE('28/' + peridos));
                        DATAMODULE1.QRYAFILIADOS.Parameters[4].VALUE := FloatToDateTime(STRTODATE('01/' + peridos));
                        DATAMODULE1.QRYAFILIADOS.Parameters[5].VALUE := FloatToDateTime(STRTODATE('28/' + peridos));
                        DATAMODULE1.QRYAFILIADOS.Parameters[6].VALUE := TRIM(tipoem);
                        DATAMODULE1.QRYAFILIADOS.Parameters[7].VALUE := TRIM(numeroemp);
                        DATAMODULE1.QRYAFILIADOS.OPEN;
                        IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
                           BEGIN
                          estado_pago := 'EMP';
                          exit;
                        END;

                   end
                   else
                   begin
                     IF DATAMODULE1.QRYAFILIADOS.RECORDCOUNT = 0 THEN
                     BEGIN
                          estado_pago := 'NRS';
                          exit;
                     end;
                   end;
                      mes := 1;
                      PORCENTAJE := 0.12;
                     QryObtenermodalidad.Close;
                     QryObtenermodalidad.Parameters[0].VALUE :=  DATAMODULE1.QRYAFILIADOSCOD_MODALIDAD_TRA.Value;
                     QryObtenermodalidad.Open;
                     if QryObtenermodalidad.RecordCount = 1 then
                     begin
                      MES := QryObtenermodalidadSALARIOS_MINIMOS.Value;
                      PORCENTAJE := QryObtenermodalidadPOR_COTIZACION.Value;
                     end;

                   // verificar  si tiene IBC
                     IF  ROUNDTO(((GLSALARIOMINIMO)*mes/30)* StrToFloat(dias),0) >  (StrToFloat(ingresobase)/30) * StrToFloat(dias) THEN
                     BEGIN
                       estado_pago := 'IBC';
                       exit;
                     END;


end;

function TDATAMODULE1.FDOM(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);

end;

function TDATAMODULE1.LDOM(Date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  // (if Month < 12 then inc(Month)
  // else begin Month := 1; inc(Year) end;
  // Result := EncodeDate(Year, Month, 1) - 1;
  Result := EncodeDate(Year, Month,
            MonthDays[IsLeapYear(Year), Month]);


end;

procedure TDATAMODULE1.LiberarMemoria;
begin
if Win32Platform = VER_PLATFORM_WIN32_NT then
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
end;

function TDATAMODULE1.promedioupcacu241(sexo: string; edad: integer;
  fecha: tdatetime): real;
begin

if  fecha > strtodate('01/09/2002') then
begin
     if edad = 0  then
     begin
      promedioupcacu241 := 1
     end
     else
         if (edad >= 1) and (edad <= 4)  then
         begin
         promedioupcacu241 := 1
         end
         else
             if (edad >= 5) and (edad <= 14)  then
             begin
                 promedioupcacu241 := 1
             end
             else
                 if (edad >= 15) and (edad <= 44)  then
                 begin
                   if sexo = 'M' then
                   begin
                    promedioupcacu241 := 2.87
                   end
                   else
                   if sexo = 'F' then
                   begin
                    promedioupcacu241 := 1.989
                   end;
                 end
                 else
                     if (edad >= 45) and (edad <= 59)  then
                     begin
                       promedioupcacu241 := 1.805
                     end
                     else
                         if (edad >= 60)  then
                         begin
                            promedioupcacu241 := 1
                         end;
end
else
begin
promedioupcacu241 := 1
end;
end;

function TDATAMODULE1.valorupcpagar(edad: integer; ano,
  sexo: string): real;
   VAR i : integer;
   VALUPC : REAL;
begin
        DATAMODULE1.QRYVALORESUPC.CLOSE;
        DATAMODULE1.QRYVALORESUPC.SQL.CLEAR;
        DATAMODULE1.QRYVALORESUPC.SQL.ADD('SELECT VAL_ESTRUCTURA_COST, INI_GRUPO_ETA, FIN_GRUPO_ETA, SEXO_GRUPO_ETA,((VAL_ESTRUCTURA_COST * VAL_UPC_DIA_NORMAL)*30) AS VALOR_NORMAL, (((PYP/12))) AS PROMOCION,SOL');
        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' FROM GRUPOS_ETAREOS,ESTRUCTURA_COSTOS,VALORESANULESCOMP  WHERE GRUPOS_ETAREOS.COD_GRUPO_ETA = ESTRUCTURA_COSTOS.COD_GRUPO_ETA AND');
        DATAMODULE1.QRYVALORESUPC.SQL.ADD(' ANO_VAL_ESTRUCTURA_COST = ANO  AND ANO_VAL_ESTRUCTURA_COST = :"FECHA" AND');
	      DATAMODULE1.QRYVALORESUPC.SQL.ADD('(INI_GRUPO_ETA <= :"EDAD" AND FIN_GRUPO_ETA >= :"EDADE")');
        DATAMODULE1.QRYVALORESUPC.Parameters[0].VALUE :=  FloatToDateTime(StrToDateTime('01/01/'+(FORMATDATETIME('YYYY',STRTODATE('01/' + ano)))));
        DATAMODULE1.QRYVALORESUPC.Parameters[1].VALUE := edad;
        DATAMODULE1.QRYVALORESUPC.Parameters[2].VALUE := edad;
        DATAMODULE1.QRYVALORESUPC.OPEN;
           IF  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT = 1 THEN
            BEGIN
                 VALUPC := (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)+((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE);
                 VALUPC := VALUPC * promedioupcacu241(sexo,edad,STRTODATE('01/' + ano));
                 valorupcpagar := RoundTo(VALUPC,2)
            end;
           IF  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT = 2 THEN
            BEGIN
                for I := 1 to  DATAMODULE1.QRYVALORESUPC.RECORDCOUNT do
                begin
                     if edad > 1 then
                     begin
                        if  DATAMODULE1.QRYVALORESUPCSEXO_GRUPO_ETA.Value = sexo then
                        begin
                           VALUPC := (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)+((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE);
                           VALUPC := VALUPC * promedioupcacu241(sexo,edad,STRTODATE('01/' + ano));
                           valorupcpagar := RoundTo(VALUPC,2)
                        end;
                     end;
                     if edad = 1 then
                     begin
                        if  DATAMODULE1.QRYVALORESUPCINI_GRUPO_ETA.Value = edad then
                        begin

                           VALUPC := (DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)+((DATAMODULE1.QRYVALORESUPCVALOR_NORMAL.VALUE+ DATAMODULE1.QRYVALORESUPCPROMOCION.VALUE)* DATAMODULE1.QRYVALORESUPCSOL.VALUE);
                           VALUPC := VALUPC * promedioupcacu241(sexo,edad,STRTODATE('01/' + ano));
                           valorupcpagar := RoundTo(VALUPC,2)
                        end;
                     end;
                     DATAMODULE1.QRYVALORESUPC.Next;
                end;
            end;

end;
(*  // INICIO RELLENAR CON CEROS

  function TFRMPRINCIPAL.RELLENARCEROS( Cadena: STRING): STRING;
Var

 Cero : String;
 Largo,Relle,I : Integer;

Begin

  Largo := LENGTH(Cadena);
  Relle := 15 - Largo;
  FOR I := 1 TO Relle DO
  Begin
     Cero := Cero + '0';
  End;
     RELLENARCEROS := Cero + Cadena;
End;
  // FINAL RELLENARCEROS
*)
END.




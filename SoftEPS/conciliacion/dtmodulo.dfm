object DataModule1: TDataModule1
  OldCreateOrder = True
  Left = 19
  Top = 112
  Height = 479
  Width = 636
  object dtsautoliquidacion: TDataSource
    DataSet = qryautoliquidacion
    Left = 42
    Top = 72
  end
  object dtsformatos: TDataSource
    DataSet = qryformatos
    Left = 632
    Top = 78
  end
  object dtbdatamec: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'softeps'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DBO'
      'USER NAME=DBO'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=PIPO')
    SessionName = 'Default'
    Left = 226
    Top = 65268
  end
  object qryautoliquidacion: TQuery
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AUTOLIQUIDACION'
      '')
    Left = 42
    Top = 26
    object qryautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA'
      Size = 15
    end
    object qryautoliquidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_TIPO_DOC'
      Size = 3
    end
    object qryautoliquidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EMP_NUMERO_DOC'
      Size = 18
    end
    object qryautoliquidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_SUCURSAL'
      Size = 2
    end
    object qryautoliquidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DECLARACION'
      Size = 1
    end
    object qryautoliquidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_PAGO'
    end
    object qryautoliquidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_COTIZACION'
      Size = 7
    end
    object qryautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.PER_PRESENTACION'
      Size = 7
    end
    object qryautoliquidacionTOT_PLANILLA: TFloatField
      FieldName = 'TOT_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PLANILLA'
    end
    object qryautoliquidacionTOT_APORTE_PER: TFloatField
      FieldName = 'TOT_APORTE_PER'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_PER'
    end
    object qryautoliquidacionTOT_INCAPACIDAD: TFloatField
      FieldName = 'TOT_INCAPACIDAD'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_INCAPACIDAD'
    end
    object qryautoliquidacionTOT_LICENCIAS: TFloatField
      FieldName = 'TOT_LICENCIAS'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_LICENCIAS'
    end
    object qryautoliquidacionTOT_APORTE: TFloatField
      FieldName = 'TOT_APORTE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE'
    end
    object qryautoliquidacionINT_MORA: TFloatField
      FieldName = 'INT_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.INT_MORA'
    end
    object qryautoliquidacionTOT_APORTE_MMORA: TFloatField
      FieldName = 'TOT_APORTE_MMORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_APORTE_MMORA'
    end
    object qryautoliquidacionTOT_SALDO_FAV: TFloatField
      FieldName = 'TOT_SALDO_FAV'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_SALDO_FAV'
    end
    object qryautoliquidacionTOT_UPC: TFloatField
      FieldName = 'TOT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_UPC'
    end
    object qryautoliquidacionTOT_PAGADO: TFloatField
      FieldName = 'TOT_PAGADO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TOT_PAGADO'
    end
    object qryautoliquidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_BANCO'
      Size = 3
    end
    object qryautoliquidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_CUENTA'
    end
    object qryautoliquidacionVAL_EFECTIVO: TFloatField
      FieldName = 'VAL_EFECTIVO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_EFECTIVO'
    end
    object qryautoliquidacionVAL_CHEQUE: TFloatField
      FieldName = 'VAL_CHEQUE'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_CHEQUE'
    end
    object qryautoliquidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.EST_PLANILLA'
      Size = 3
    end
    object qryautoliquidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_REGIONAL'
      Size = 3
    end
    object qryautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.COD_OFICINA'
      Size = 3
    end
    object qryautoliquidacionNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DECLARACION'
    end
    object qryautoliquidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.CRU_CONCILIACION'
      Size = 1
    end
    object qryautoliquidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_DIGITACION'
    end
    object qryautoliquidacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.TIP_DOC_USUARIO'
      Size = 3
    end
    object qryautoliquidacionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NUM_DOC_USUARIO'
      Size = 18
    end
    object qryautoliquidacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.FEC_MODIFICACION'
    end
    object qryautoliquidacionNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_INCAP_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_INCAP_PAG: TFloatField
      FieldName = 'VAL_INCAP_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INCAP_PAG'
    end
    object qryautoliquidacionNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_LICEN_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_LICEN_PAG: TFloatField
      FieldName = 'VAL_LICEN_PAG'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_LICEN_PAG'
    end
    object qryautoliquidacionNO_MESES_MORA: TFloatField
      FieldName = 'NO_MESES_MORA'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_MESES_MORA'
    end
    object qryautoliquidacionNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryautoliquidacionVAL_NETO_UPC: TFloatField
      FieldName = 'VAL_NETO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_NETO_UPC'
    end
    object qryautoliquidacionVAL_INTERES_UPC: TFloatField
      FieldName = 'VAL_INTERES_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_INTERES_UPC'
    end
    object qryautoliquidacionVAL_APORMASINT_UPC: TFloatField
      FieldName = 'VAL_APORMASINT_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_APORMASINT_UPC'
    end
    object qryautoliquidacionVAL_SALFAVOR_UPC: TFloatField
      FieldName = 'VAL_SALFAVOR_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_SALFAVOR_UPC'
    end
    object qryautoliquidacionVAL_PAGO_UPC: TFloatField
      FieldName = 'VAL_PAGO_UPC'
      Origin = 'SOFTEPS.AUTOLIQUIDACION.VAL_PAGO_UPC'
    end
  end
  object dtsempresas: TDataSource
    Left = 484
    Top = 75
  end
  object dtsafilados: TDataSource
    Left = 146
    Top = 194
  end
  object dtsdocumento: TDataSource
    DataSet = qrydocumentos
    Left = 42
    Top = 186
  end
  object qrygetdate: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT SYSDATE FROM DUAL')
    Left = 127
    Top = 26
    object qrygetdateSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
  end
  object qrybancos: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM BANCOS')
    Left = 208
    Top = 24
    object qrybancosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.BANCOS.COD_BANCO'
      Size = 3
    end
    object qrybancosNOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Origin = 'SOFTEPS.BANCOS.NOM_BANCO'
      Size = 50
    end
    object qrybancosCTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Origin = 'SOFTEPS.BANCOS.CTA_BANCO'
      Size = 15
    end
    object qrybancosDIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Origin = 'SOFTEPS.BANCOS.DIR_BANCO'
      Size = 70
    end
    object qrybancosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.BANCOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrybancosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.BANCOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qrybancosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.BANCOS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrybancosCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.BANCOS.COD_CIUDAD'
      Size = 3
    end
    object qrybancosTIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Origin = 'SOFTEPS.BANCOS.TIPO_RECAUDO'
      Size = 1
    end
    object qrybancosEST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Origin = 'SOFTEPS.BANCOS.EST_BANCO'
      Size = 1
    end
  end
  object dtsbancos: TDataSource
    DataSet = qrybancos
    Left = 197
    Top = 75
  end
  object dtsestracto: TDataSource
    DataSet = qryestrato
    Left = 552
    Top = 72
  end
  object qrydepartamentos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    Left = 289
    Top = 25
    object qrydepartamentosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qrydepartamentosNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Origin = 'SOFTEPS.DEPARTAMENTOS.NOM_DEPARTAMENTO'
      Size = 35
    end
  end
  object qryciudades: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM CIUDADES')
    Left = 382
    Top = 28
    object qryciudadesCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.CIUDADES.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryciudadesCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.COD_CIUDAD'
      Size = 3
    end
    object qryciudadesNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
    object qryciudadesPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.CIUDADES.POR_ALTO_RIE'
      Size = 3
    end
    object qryciudadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CIUDADES.COD_REGIONAL'
      Size = 3
    end
    object qryciudadesVALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
    object qryciudadesCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.CIUDADES.CEN_COSTO'
      Size = 6
    end
  end
  object dtsciudades: TDataSource
    DataSet = qryciudades
    Left = 382
    Top = 78
  end
  object dtsdepartamentos: TDataSource
    DataSet = qrydepartamentos
    Left = 286
    Top = 76
  end
  object dtsafiliaempresa: TDataSource
    Left = 148
    Top = 140
  end
  object qryempresas: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM EMPRESAS')
    Left = 484
    Top = 28
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_SUCURSAL'
      Size = 2
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.EMPRESAS.COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.EMPRESAS.COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.EMPRESAS.COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.EMPRESAS.TIP_APORTANTE'
      Size = 1
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.EMPRESAS.FEC_AFILIACION'
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.EMPRESAS.TEL_EMPRESA2'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.EMPRESAS.TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.EMPRESAS.COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.EMPRESAS.COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.EMPRESAS.COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.EMPRESAS.NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qryestrato: TQuery
    DatabaseName = 'softeps'
    Constrained = True
    SQL.Strings = (
      'SELECT * FROM  EST_BANCARIO_AUTO')
    Left = 554
    Top = 26
    object qryestratoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.COD_BANCO'
      Size = 3
    end
    object qryestratoCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.COD_SUCURSAL'
      Size = 8
    end
    object qryestratoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.NUM_DOCUMENTO'
      Size = 18
    end
    object qryestratoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.NUM_PLANILLA'
      Size = 15
    end
    object qryestratoFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.FEC_RECAUDO'
    end
    object qryestratoVAL_CONSIGNACION: TFloatField
      FieldName = 'VAL_CONSIGNACION'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.VAL_CONSIGNACION'
    end
    object qryestratoTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.TIP_MOVIMIENTO'
      Size = 5
    end
    object qryestratoEST_CONCILIACION: TStringField
      FieldName = 'EST_CONCILIACION'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.EST_CONCILIACION'
      Size = 1
    end
    object qryestratoFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
      Origin = 'SOFTEPS.EST_BANCARIO_AUTO.FEC_PLANILLA_CON'
    end
  end
  object qryformatos: TQuery
    AutoRefresh = True
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM FORMATOS_BANCOS')
    Left = 626
    Top = 28
    object qryformatosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.COD_BANCO'
      Size = 3
    end
    object qryformatosCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.COD_CAMPO'
      Size = 3
    end
    object qryformatosDELIMITADOR: TStringField
      FieldName = 'DELIMITADOR'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.DELIMITADOR'
      Size = 15
    end
    object qryformatosINI_CAMPO: TFloatField
      FieldName = 'INI_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.INI_CAMPO'
    end
    object qryformatosLON_CAMPO: TFloatField
      FieldName = 'LON_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.LON_CAMPO'
    end
    object qryformatosFORMATO: TStringField
      FieldName = 'FORMATO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.FORMATO'
      Size = 10
    end
    object qryformatosNUM_CAMPO: TFloatField
      FieldName = 'NUM_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.NUM_CAMPO'
    end
    object qryformatosESTADO: TFloatField
      FieldName = 'ESTADO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.ESTADO'
    end
  end
  object dtssucursales: TDataSource
    DataSet = qrysucursales
    Left = 686
    Top = 72
  end
  object qrysucursales: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM SUCURSALES_BANCOS')
    Left = 688
    Top = 24
    object qrysucursalesCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Origin = 'SOFTEPS.SUCURSALES_BANCOS.CODBANCO'
      Size = 3
    end
    object qrysucursalesCODSUCURSAL: TStringField
      FieldName = 'CODSUCURSAL'
      Origin = 'SOFTEPS.SUCURSALES_BANCOS.CODSUCURSAL'
      Size = 5
    end
    object qrysucursalesNOMSUCURSAL: TStringField
      FieldName = 'NOMSUCURSAL'
      Origin = 'SOFTEPS.SUCURSALES_BANCOS.NOMSUCURSAL'
      Size = 60
    end
  end
  object qrydocumentos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM TIPOS_DOCUMENTOS')
    Left = 42
    Top = 132
    object qrydocumentosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.TIPOS_DOCUMENTOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qrydocumentosNOM_DOCUMENTO: TStringField
      FieldName = 'NOM_DOCUMENTO'
      Origin = 'SOFTEPS.TIPOS_DOCUMENTOS.NOM_DOCUMENTO'
      Size = 35
    end
  end
  object qryformatos1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM FORMATOS_BANCOS ')
    Left = 248
    Top = 146
    object qryformatos1COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.COD_BANCO'
      Size = 3
    end
    object qryformatos1COD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.COD_CAMPO'
      Size = 3
    end
    object qryformatos1DELIMITADOR: TStringField
      FieldName = 'DELIMITADOR'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.DELIMITADOR'
      Size = 15
    end
    object qryformatos1INI_CAMPO: TFloatField
      FieldName = 'INI_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.INI_CAMPO'
    end
    object qryformatos1LON_CAMPO: TFloatField
      FieldName = 'LON_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.LON_CAMPO'
    end
    object qryformatos1FORMATO: TStringField
      FieldName = 'FORMATO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.FORMATO'
      Size = 10
    end
    object qryformatos1NUM_CAMPO: TFloatField
      FieldName = 'NUM_CAMPO'
      Origin = 'SOFTEPS.FORMATOS_BANCOS.NUM_CAMPO'
    end
  end
  object qrycampos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DET_ESTRUCTURA_CAMPOS ')
    Left = 318
    Top = 144
    object qrycamposCODCAMPO: TStringField
      FieldName = 'CODCAMPO'
      Origin = 'SOFTEPS.DET_ESTRUCTURA_CAMPOS.CODCAMPO'
      Size = 2
    end
    object qrycamposNOMCAMPO: TStringField
      FieldName = 'NOMCAMPO'
      Origin = 'SOFTEPS.DET_ESTRUCTURA_CAMPOS.NOMCAMPO'
    end
    object qrycamposFORMATO: TStringField
      FieldName = 'FORMATO'
      Origin = 'SOFTEPS.DET_ESTRUCTURA_CAMPOS.FORMATO'
      Size = 10
    end
  end
  object dtscampos: TDataSource
    DataSet = qrycampos
    Left = 322
    Top = 190
  end
end

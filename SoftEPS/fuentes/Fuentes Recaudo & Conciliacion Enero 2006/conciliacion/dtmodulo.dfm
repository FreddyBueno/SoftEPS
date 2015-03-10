object DataModule1: TDataModule1
  OldCreateOrder = True
  Left = 203
  Top = 236
  Height = 302
  Width = 821
  object dtsautoliquidacion: TDataSource
    DataSet = qryautoliquidacion
    Left = 50
    Top = 72
  end
  object dtsformatos: TDataSource
    DataSet = qryformatos
    Left = 616
    Top = 62
  end
  object dtsempresas: TDataSource
    DataSet = qryempresas
    Left = 484
    Top = 75
  end
  object dtsdocumento: TDataSource
    DataSet = qrydocumentos
    Left = 42
    Top = 186
  end
  object dtsbancos: TDataSource
    DataSet = qrybancos
    Left = 157
    Top = 75
  end
  object dtsestracto: TDataSource
    DataSet = qryestrato
    Left = 552
    Top = 72
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
  object dtssucursales: TDataSource
    DataSet = qrysucursales
    Left = 686
    Top = 72
  end
  object dtscampos: TDataSource
    DataSet = qrycampos
    Left = 322
    Top = 190
  end
  object dtbdatamec: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=1234;Persist Security Info=True;Use' +
      'r ID=CONSULTA;Initial Catalog=SOFTARS;Data Source=SALUDVIDA1;Use' +
      ' Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wo' +
      'rkstation ID=BTA_SISTEMAS2;Use Encryption for Data=False;Tag wit' +
      'h column collation when possible=False'
    ConnectOptions = coAsyncConnect
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 16
  end
  object qryautoliquidacion: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AUTOLIQUIDACION')
    Left = 88
    Top = 16
    object qryautoliquidacionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryautoliquidacionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object qryautoliquidacionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object qryautoliquidacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryautoliquidacionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object qryautoliquidacionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qryautoliquidacionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Size = 15
    end
    object qryautoliquidacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qryautoliquidacionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qryautoliquidacionTOT_PLANILLA: TBCDField
      FieldName = 'TOT_PLANILLA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE_PER: TBCDField
      FieldName = 'TOT_APORTE_PER'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_INCAPACIDAD: TBCDField
      FieldName = 'TOT_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_LICENCIAS: TBCDField
      FieldName = 'TOT_LICENCIAS'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE: TBCDField
      FieldName = 'TOT_APORTE'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionINT_MORA: TBCDField
      FieldName = 'INT_MORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_APORTE_MMORA: TBCDField
      FieldName = 'TOT_APORTE_MMORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_SALDO_FAV: TBCDField
      FieldName = 'TOT_SALDO_FAV'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_UPC: TBCDField
      FieldName = 'TOT_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionTOT_PAGADO: TBCDField
      FieldName = 'TOT_PAGADO'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryautoliquidacionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
    end
    object qryautoliquidacionVAL_EFECTIVO: TBCDField
      FieldName = 'VAL_EFECTIVO'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_CHEQUE: TBCDField
      FieldName = 'VAL_CHEQUE'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Size = 3
    end
    object qryautoliquidacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qryautoliquidacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryautoliquidacionNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qryautoliquidacionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Size = 1
    end
    object qryautoliquidacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryautoliquidacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qryautoliquidacionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Size = 18
    end
    object qryautoliquidacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qryautoliquidacionNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_INCAP_PAG: TBCDField
      FieldName = 'VAL_INCAP_PAG'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Size = 30
    end
    object qryautoliquidacionVAL_LICEN_PAG: TBCDField
      FieldName = 'VAL_LICEN_PAG'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_MESES_MORA: TBCDField
      FieldName = 'NO_MESES_MORA'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Size = 15
    end
    object qryautoliquidacionVAL_NETO_UPC: TBCDField
      FieldName = 'VAL_NETO_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_INTERES_UPC: TBCDField
      FieldName = 'VAL_INTERES_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_APORMASINT_UPC: TBCDField
      FieldName = 'VAL_APORMASINT_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_SALFAVOR_UPC: TBCDField
      FieldName = 'VAL_SALFAVOR_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionVAL_PAGO_UPC: TBCDField
      FieldName = 'VAL_PAGO_UPC'
      Precision = 18
      Size = 0
    end
    object qryautoliquidacionNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 10
    end
    object qryautoliquidacionNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 50
    end
  end
  object qrygetdate: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT GETDATE() SYSDATE ')
    Left = 160
    Top = 16
    object qrygetdateSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
  end
  object qrybancos: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BANCOS_CONTRV')
    Left = 232
    Top = 16
    object qrybancosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qrybancosNOM_BANCO: TStringField
      FieldName = 'NOM_BANCO'
      Size = 50
    end
    object qrybancosCTA_BANCO: TStringField
      FieldName = 'CTA_BANCO'
      Size = 15
    end
    object qrybancosDIR_BANCO: TStringField
      FieldName = 'DIR_BANCO'
      Size = 70
    end
    object qrybancosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrybancosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrybancosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qrybancosCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qrybancosTIPO_RECAUDO: TStringField
      FieldName = 'TIPO_RECAUDO'
      Size = 1
    end
    object qrybancosEST_BANCO: TStringField
      FieldName = 'EST_BANCO'
      Size = 1
    end
    object qrybancosCOD_CUENTA: TStringField
      FieldName = 'COD_CUENTA'
      Size = 4
    end
    object qrybancosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 50
    end
    object qrybancosCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 100
    end
  end
  object qrydepartamentos: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    Left = 312
    Top = 16
    object qrydepartamentosCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qrydepartamentosNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Size = 35
    end
  end
  object qryciudades: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CIUDADES')
    Left = 400
    Top = 16
    object qryciudadesCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qryciudadesCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qryciudadesNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Size = 35
    end
    object qryciudadesPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Size = 3
    end
    object qryciudadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryciudadesVALOR_UPC: TBCDField
      FieldName = 'VALOR_UPC'
      Precision = 18
      Size = 2
    end
    object qryciudadesCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Size = 6
    end
  end
  object qryempresas: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EMPRESAS')
    Left = 464
    Top = 16
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Size = 1
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qryestrato: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'INICIAL'
        DataType = ftDateTime
        Size = 16
        Value = 0d
      end
      item
        Name = 'FINAL'
        DataType = ftDateTime
        Size = 16
        Value = 0.5d
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 1
        Value = 'N'
      end
      item
        Name = 'BANCO'
        DataType = ftString
        Size = 2
        Value = '05'
      end>
    SQL.Strings = (
      
        'SELECT *  FROM EST_BANCARIO_AUTO WHERE FEC_RECAUDO >= :"INICIAL"' +
        ' AND  FEC_RECAUDO <= :"FINAL"  AND  (EST_CONCILIACION = :"ESTADO' +
        '") AND COD_BANCO = :"BANCO" ORDER BY FEC_RECAUDO,VAL_CONSIGNACIO' +
        'N,NUM_DOCUMENTO')
    Left = 552
    Top = 16
    object qryestratoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryestratoCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 8
    end
    object qryestratoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryestratoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryestratoFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
    end
    object qryestratoVAL_CONSIGNACION: TBCDField
      FieldName = 'VAL_CONSIGNACION'
      Precision = 18
      Size = 0
    end
    object qryestratoTIP_MOVIMIENTO: TStringField
      DisplayWidth = 20
      FieldName = 'TIP_MOVIMIENTO'
    end
    object qryestratoEST_CONCILIACION: TStringField
      FieldName = 'EST_CONCILIACION'
      Size = 1
    end
    object qryestratoFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
    end
    object qryestratoFEC_RECEPCION: TDateTimeField
      FieldName = 'FEC_RECEPCION'
    end
    object qryestratoMODIFICACION: TMemoField
      FieldName = 'MODIFICACION'
      BlobType = ftMemo
    end
    object qryestratoEST_REGISTRO: TStringField
      FieldName = 'EST_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object qryestratoFEC_MOD: TDateTimeField
      FieldName = 'FEC_MOD'
    end
    object qryestratoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object qryformatos: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FORMATOS_BANCOS_CONTRV')
    Left = 616
    Top = 16
    object qryformatosCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryformatosCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 3
    end
    object qryformatosDELIMITADOR: TStringField
      FieldName = 'DELIMITADOR'
      Size = 15
    end
    object qryformatosINI_CAMPO: TFloatField
      FieldName = 'INI_CAMPO'
    end
    object qryformatosLON_CAMPO: TFloatField
      FieldName = 'LON_CAMPO'
    end
    object qryformatosFORMATO: TStringField
      FieldName = 'FORMATO'
      Size = 10
    end
    object qryformatosNUM_CAMPO: TFloatField
      FieldName = 'NUM_CAMPO'
    end
    object qryformatosESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object qrysucursales: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SUCURSALES_BANCOS_CONTRV')
    Left = 686
    Top = 16
    object qrysucursalesCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object qrysucursalesCODSUCURSAL: TStringField
      FieldName = 'CODSUCURSAL'
      Size = 6
    end
    object qrysucursalesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 6
    end
    object qrysucursalesNOMSUCURSAL: TStringField
      FieldName = 'NOMSUCURSAL'
      Size = 100
    end
    object qrysucursalesEST_SUCURSAL: TStringField
      FieldName = 'EST_SUCURSAL'
      FixedChar = True
      Size = 1
    end
  end
  object qrydocumentos: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TIPOS_DOCUMENTOS')
    Left = 40
    Top = 128
    object qrydocumentosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrydocumentosNOM_DOCUMENTO: TStringField
      FieldName = 'NOM_DOCUMENTO'
      Size = 35
    end
  end
  object qryformatos1: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM FORMATOS_BANCOS ')
    Left = 152
    Top = 136
    object qryformatos1COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryformatos1COD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 3
    end
    object qryformatos1DELIMITADOR: TStringField
      FieldName = 'DELIMITADOR'
      Size = 15
    end
    object qryformatos1INI_CAMPO: TFloatField
      FieldName = 'INI_CAMPO'
    end
    object qryformatos1LON_CAMPO: TFloatField
      FieldName = 'LON_CAMPO'
    end
    object qryformatos1FORMATO: TStringField
      FieldName = 'FORMATO'
      Size = 10
    end
    object qryformatos1NUM_CAMPO: TFloatField
      FieldName = 'NUM_CAMPO'
    end
    object qryformatos1ESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object qrycampos: TADOQuery
    Connection = dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DET_ESTRUCTURA_CAMPOS ')
    Left = 328
    Top = 144
    object qrycamposCODCAMPO: TStringField
      FieldName = 'CODCAMPO'
      Size = 2
    end
    object qrycamposNOMCAMPO: TStringField
      FieldName = 'NOMCAMPO'
    end
    object qrycamposFORMATO: TStringField
      FieldName = 'FORMATO'
      Size = 10
    end
  end
  object qryusuarios: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pusuario'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'select * from usuarios '
      'where cod_usuario = :'#39'pusuario'#39' ')
    Left = 408
    Top = 152
    object qryusuariosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryusuariosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryusuariosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryusuariosCOD_USUARIO: TStringField
      FieldName = 'COD_USUARIO'
    end
    object qryusuariosNOM_USUARIO: TStringField
      FieldName = 'NOM_USUARIO'
      Size = 30
    end
    object qryusuariosPWD_USUARIO: TStringField
      FieldName = 'PWD_USUARIO'
    end
    object qryusuariosFEC_EXPIRACION: TDateTimeField
      FieldName = 'FEC_EXPIRACION'
    end
    object qryusuariosNIV_USUARIO: TBCDField
      FieldName = 'NIV_USUARIO'
      Precision = 32
      Size = 0
    end
    object qryusuariosUSU_LOGUEADO: TBCDField
      FieldName = 'USU_LOGUEADO'
      Precision = 32
      Size = 0
    end
    object qryusuariosULT_FEC_LOG: TDateTimeField
      FieldName = 'ULT_FEC_LOG'
    end
    object qryusuariosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryusuariosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryusuariosCOD_CARGO: TStringField
      FieldName = 'COD_CARGO'
      Size = 5
    end
  end
  object Qryprogramas: TADOQuery
    Connection = dtbdatamec
    Parameters = <
      item
        Name = '31'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from programas where  cod_aplicacion = :'#39'31'#39)
    Left = 248
    Top = 176
    object QryprogramasCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object QryprogramasNOM_APLICACION: TStringField
      FieldName = 'NOM_APLICACION'
      Size = 100
    end
    object QryprogramasVERSIONES: TStringField
      FieldName = 'VERSIONES'
      Size = 10
    end
    object QryprogramasAPLICACION: TBytesField
      FieldName = 'APLICACION'
      Size = 50
    end
    object QryprogramasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 100
    end
    object QryprogramasDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object Qryprogramasnom_exe: TStringField
      FieldName = 'nom_exe'
      Size = 50
    end
  end
  object qrysegudidad: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from Seguridad')
    Left = 504
    Top = 152
    object qrysegudidadCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object qrysegudidadNOM_APLICACION: TStringField
      FieldName = 'NOM_APLICACION'
      Size = 100
    end
    object qrysegudidadCOD_MENU: TStringField
      FieldName = 'COD_MENU'
      Size = 7
    end
    object qrysegudidadCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 50
    end
  end
  object qrypermisos: TADOQuery
    Connection = dtbdatamec
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from permisos')
    Left = 576
    Top = 152
    object qrypermisosCOD_USUARIO: TStringField
      FieldName = 'COD_USUARIO'
    end
    object qrypermisosCOD_APLICACION: TStringField
      FieldName = 'COD_APLICACION'
      Size = 15
    end
    object qrypermisosCOD_MENU: TStringField
      FieldName = 'COD_MENU'
      Size = 7
    end
    object qrypermisosCOD_CAMPO: TStringField
      FieldName = 'COD_CAMPO'
      Size = 50
    end
  end
  object qrymodificarextracto: TADOQuery
    Connection = dtbdatamec
    Parameters = <
      item
        Name = 'BANCO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'SUCURSAL'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'NIT'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'PLANILLA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'VALOR'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end
      item
        Name = 'TIPMOV'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'MODIF'
        Attributes = [paNullable, paLong]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'FECMOD'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'USUARIO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'NUMPLANILLA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE EST_BANCARIO_AUTO SET COD_BANCO= :BANCO,COD_SUCURSAL= :SU' +
        'CURSAL,NUM_DOCUMENTO= :NIT,'
      
        'NUM_PLANILLA= :PLANILLA,FEC_RECAUDO= :FECHA,VAL_CONSIGNACION= :V' +
        'ALOR,TIP_MOVIMIENTO= :TIPMOV,'
      
        'MODIFICACION= :MODIF,FEC_MOD= :FECMOD,USUARIO= :USUARIO WHERE NU' +
        'M_PLANILLA= :NUMPLANILLA')
    Left = 450
    Top = 212
  end
end

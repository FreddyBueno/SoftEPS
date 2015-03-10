object DataModule1: TDataModule1
  OldCreateOrder = True
  Left = 188
  Top = 107
  Height = 408
  Width = 618
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
  object qrygetdate: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT sysdate from dual')
    Left = 21
    Top = 10
    object qrygetdateSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
  end
  object qrybancos: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'select * from bancos')
    Left = 82
    Top = 10
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
  object qryprestadores: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM PRESTADORES')
    Left = 222
    Top = 12
    object qryprestadorescod_prestador: TStringField
      FieldName = 'cod_prestador'
      Origin = 'DATOSMEC.PRESTADORES.cod_prestador'
      FixedChar = True
      Size = 18
    end
    object qryprestadoresmon_prestador: TStringField
      FieldName = 'mon_prestador'
      Origin = 'DATOSMEC.PRESTADORES.mon_prestador'
      FixedChar = True
      Size = 100
    end
    object qryprestadoresnum_acreditacion: TStringField
      FieldName = 'num_acreditacion'
      Origin = 'DATOSMEC.PRESTADORES.num_acreditacion'
      FixedChar = True
      Size = 18
    end
    object qryprestadorescod_departamento: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DATOSMEC.PRESTADORES.cod_departamento'
      FixedChar = True
      Size = 2
    end
    object qryprestadorescod_ciudad: TStringField
      FieldName = 'cod_ciudad'
      Origin = 'DATOSMEC.PRESTADORES.cod_ciudad'
      FixedChar = True
      Size = 3
    end
    object qryprestadoresdir_prestador: TStringField
      FieldName = 'dir_prestador'
      Origin = 'DATOSMEC.PRESTADORES.dir_prestador'
      FixedChar = True
      Size = 100
    end
    object qryprestadorestel_prestador: TStringField
      FieldName = 'tel_prestador'
      Origin = 'DATOSMEC.PRESTADORES.tel_prestador'
      FixedChar = True
    end
    object qryprestadoresrep_legal: TStringField
      FieldName = 'rep_legal'
      Origin = 'DATOSMEC.PRESTADORES.rep_legal'
      FixedChar = True
      Size = 100
    end
    object qryprestadoresniv_aten_prestador: TStringField
      FieldName = 'niv_aten_prestador'
      Origin = 'DATOSMEC.PRESTADORES.niv_aten_prestador'
      FixedChar = True
      Size = 50
    end
    object qryprestadorestip_prestador: TStringField
      FieldName = 'tip_prestador'
      Origin = 'DATOSMEC.PRESTADORES.tip_prestador'
      FixedChar = True
      Size = 1
    end
    object qryprestadorestip_identificacion: TStringField
      FieldName = 'tip_identificacion'
      Origin = 'DATOSMEC.PRESTADORES.tip_identificacion'
      FixedChar = True
      Size = 3
    end
    object qryprestadoresnum_identificacion: TStringField
      FieldName = 'num_identificacion'
      Origin = 'DATOSMEC.PRESTADORES.num_identificacion'
      FixedChar = True
      Size = 18
    end
    object qryprestadorescla_prestador: TStringField
      FieldName = 'cla_prestador'
      Origin = 'DATOSMEC.PRESTADORES.cla_prestador'
      FixedChar = True
      Size = 2
    end
    object qryprestadoresrec_copago: TStringField
      FieldName = 'rec_copago'
      Origin = 'DATOSMEC.PRESTADORES.rec_copago'
      FixedChar = True
      Size = 1
    end
    object qryprestadoresrec_cuota: TStringField
      FieldName = 'rec_cuota'
      Origin = 'DATOSMEC.PRESTADORES.rec_cuota'
      FixedChar = True
      Size = 1
    end
    object qryprestadoresest_prestador: TStringField
      FieldName = 'est_prestador'
      Origin = 'DATOSMEC.PRESTADORES.est_prestador'
      FixedChar = True
      Size = 1
    end
    object qryprestadoresfec_ultima_auto: TDateTimeField
      FieldName = 'fec_ultima_auto'
      Origin = 'DATOSMEC.PRESTADORES.fec_ultima_auto'
    end
    object qryprestadoresest_contrato: TStringField
      FieldName = 'est_contrato'
      Origin = 'DATOSMEC.PRESTADORES.est_contrato'
      FixedChar = True
      Size = 1
    end
    object qryprestadorescod_reginal: TStringField
      FieldName = 'cod_reginal'
      Origin = 'DATOSMEC.PRESTADORES.cod_reginal'
      FixedChar = True
      Size = 3
    end
    object qryprestadorescod_oficina: TStringField
      FieldName = 'cod_oficina'
      Origin = 'DATOSMEC.PRESTADORES.cod_oficina'
      FixedChar = True
      Size = 3
    end
    object qryprestadoresfec_ingreso: TDateTimeField
      FieldName = 'fec_ingreso'
      Origin = 'DATOSMEC.PRESTADORES.fec_ingreso'
    end
    object qryprestadoresdir_electronica: TStringField
      FieldName = 'dir_electronica'
      Origin = 'DATOSMEC.PRESTADORES.dir_electronica'
      FixedChar = True
    end
  end
  object qrydepartamentos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from departamentos')
    Left = 307
    Top = 13
    object qrydepartamentoscod_departamento: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DBUNIMEC.departamentos.cod_departamento'
      FixedChar = True
      Size = 2
    end
    object qrydepartamentosnom_departamento: TStringField
      FieldName = 'nom_departamento'
      Origin = 'DBUNIMEC.departamentos.nom_departamento'
      FixedChar = True
      Size = 35
    end
  end
  object qryciudades: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CIUDADES')
    Left = 392
    Top = 14
    object qryciudadesCOD_DEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.CIUDADES.COD_DEPARTAMENTO'
      Required = True
      Visible = False
      Size = 2
    end
    object qryciudadesNOM_DEPARTAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = qrydepartamentos
      LookupKeyFields = 'cod_departamento'
      LookupResultField = 'nom_departamento'
      KeyFields = 'COD_DEPARTAMENTO'
      Size = 30
      Lookup = True
    end
    object qryciudadesCOD_CIUDAD: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.COD_CIUDAD'
      Required = True
      Visible = False
      Size = 3
    end
    object qryciudadesNOM_CIUDAD: TStringField
      DisplayLabel = 'Nombre Ciudad'
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
    object qryciudadesPOR_ALTO_RIE: TStringField
      DisplayLabel = 'Alto Riesgo'
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.CIUDADES.POR_ALTO_RIE'
      Size = 3
    end
    object qryciudadesCOD_REGIONAL: TStringField
      DisplayLabel = 'Regional'
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CIUDADES.COD_REGIONAL'
      Size = 3
    end
    object qryciudadesVALOR_UPC: TFloatField
      DisplayLabel = 'Valor UPC'
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
    object qryciudadesCEN_COSTO: TStringField
      DisplayLabel = 'Centro Costos'
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.CIUDADES.CEN_COSTO'
      Size = 6
    end
  end
  object dtsciudades: TDataSource
    DataSet = qryciudades
    Left = 230
    Top = 258
  end
  object dtsdepartamentos: TDataSource
    DataSet = qrydepartamentos
    Left = 50
    Top = 250
  end
  object qrydiagnosticos: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DIGNOSTICOS')
    Left = 146
    Top = 12
    object qrydiagnosticoscod_diagnostico: TStringField
      FieldName = 'cod_diagnostico'
      Origin = 'DATOSMEC.DIGNOSTICOS.cod_diagnostico'
      FixedChar = True
      Size = 4
    end
    object qrydiagnosticosnom_diagnsotico: TStringField
      FieldName = 'nom_diagnsotico'
      Origin = 'DATOSMEC.DIGNOSTICOS.nom_diagnsotico'
      FixedChar = True
      Size = 255
    end
    object qrydiagnosticosrango_sexo: TStringField
      FieldName = 'rango_sexo'
      Origin = 'DATOSMEC.DIGNOSTICOS.rango_sexo'
      FixedChar = True
      Size = 1
    end
    object qrydiagnosticoseda_minina: TIntegerField
      FieldName = 'eda_minina'
      Origin = 'DATOSMEC.DIGNOSTICOS.eda_minina'
    end
    object qrydiagnosticoseda_maxima: TIntegerField
      FieldName = 'eda_maxima'
      Origin = 'DATOSMEC.DIGNOSTICOS.eda_maxima'
    end
  end
  object qryborrado: TQuery
    DatabaseName = 'softeps'
    Left = 14
    Top = 58
  end
  object Query1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM DEPARTAMENTOS')
    Left = 144
    Top = 68
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 74
    Top = 64
  end
  object qryrangoaportantes: TQuery
    CachedUpdates = True
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RANGO_PAGO')
    Left = 214
    Top = 70
    object qryrangoaportantesTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.RANGO_PAGO.TIP_APORTANTE'
      Visible = False
      Size = 1
    end
    object qryrangoaportantesNOM_APORTANTE: TStringField
      DisplayLabel = 'NOMBRE'
      FieldKind = fkLookup
      FieldName = 'NOM_APORTANTE'
      LookupDataSet = qryaportantes
      LookupKeyFields = 'TIP_APORTANTE'
      LookupResultField = 'NOM_TIPO_APO'
      KeyFields = 'TIP_APORTANTE'
      Size = 30
      Lookup = True
    end
    object qryrangoaportantesDIG_FINAL: TStringField
      DisplayLabel = 'ULTIMO DIGITO'
      FieldName = 'DIG_FINAL'
      Origin = 'SOFTEPS.RANGO_PAGO.DIG_FINAL'
      Size = 1
    end
    object qryrangoaportantesDIA_HABIL: TStringField
      DisplayLabel = 'ULTIMO DIA HABIL DEL MES'
      FieldName = 'DIA_HABIL'
      Origin = 'SOFTEPS.RANGO_PAGO.DIA_HABIL'
      Size = 2
    end
  end
  object qryaportantes: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM TIPOS_APORTANTES')
    Left = 284
    Top = 66
    object qryaportantesTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.TIPOS_APORTANTES.TIP_APORTANTE'
      Size = 1
    end
    object qryaportantesNOM_TIPO_APO: TStringField
      FieldName = 'NOM_TIPO_APO'
      Origin = 'SOFTEPS.TIPOS_APORTANTES.NOM_TIPO_APO'
      Size = 50
    end
  end
  object datasaportentes: TDataSource
    DataSet = qryaportantes
    Left = 156
    Top = 118
  end
  object dtsrangoaportantes: TDataSource
    DataSet = qryrangoaportantes
    Left = 70
    Top = 302
  end
  object qrycompania: TQuery
    CachedUpdates = True
    AutoRefresh = True
    DatabaseName = 'softeps'
    Constrained = True
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM COMPANIA')
    Left = 332
    Top = 64
    object qrycompaniaTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.TIP_DOCUMENTO'
      Size = 3
    end
    object qrycompaniaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.COMPANIA.NUM_DOCUMENTO'
      Size = 18
    end
    object qrycompaniaNOM_EPS: TStringField
      FieldName = 'NOM_EPS'
      Origin = 'SOFTEPS.COMPANIA.NOM_EPS'
      Size = 100
    end
    object qrycompaniaFEC_INCLUSION: TDateTimeField
      FieldName = 'FEC_INCLUSION'
      Origin = 'SOFTEPS.COMPANIA.FEC_INCLUSION'
      EditMask = '!99/99/0000;1;_'
    end
    object qrycompaniaCOD_EPS: TStringField
      FieldName = 'COD_EPS'
      Origin = 'SOFTEPS.COMPANIA.COD_EPS'
      Size = 6
    end
    object qrycompaniaDIR_EPS: TStringField
      FieldName = 'DIR_EPS'
      Origin = 'SOFTEPS.COMPANIA.DIR_EPS'
      Size = 50
    end
    object qrycompaniaTEL_EPS: TStringField
      FieldName = 'TEL_EPS'
      Origin = 'SOFTEPS.COMPANIA.TEL_EPS'
    end
    object qrycompaniaFAX_EPS: TStringField
      FieldName = 'FAX_EPS'
      Origin = 'SOFTEPS.COMPANIA.FAX_EPS'
    end
    object qrycompaniaREP_LEGAL: TStringField
      FieldName = 'REP_LEGAL'
      Origin = 'SOFTEPS.COMPANIA.REP_LEGAL'
      Size = 100
    end
    object qrycompaniaEML_EPS: TStringField
      FieldName = 'EML_EPS'
      Origin = 'SOFTEPS.COMPANIA.EML_EPS'
      Size = 50
    end
  end
  object qryoficinas: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM OFICINAS')
    Left = 164
    Top = 224
    object qryoficinasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.COD_OFICINA'
      Size = 3
    end
    object qryoficinasNOM_OFICINA: TStringField
      FieldName = 'NOM_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.NOM_OFICINA'
      Size = 50
    end
    object qryoficinasDIR_OFICINA: TStringField
      FieldName = 'DIR_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.DIR_OFICINA'
      Size = 50
    end
    object qryoficinasTEL_OFICINA: TStringField
      FieldName = 'TEL_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.TEL_OFICINA'
      Size = 15
    end
    object qryoficinasFAX_OFICINA: TStringField
      FieldName = 'FAX_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.FAX_OFICINA'
      Size = 15
    end
    object qryoficinasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.OFICINAS.COD_REGIONAL'
      Size = 3
    end
    object qryoficinasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.OFICINAS.COD_DEPARTAMENTO'
      Size = 2
    end
    object qryoficinasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.OFICINAS.COD_CIUDAD'
      Size = 3
    end
    object qryoficinasTIP_OFICINA: TStringField
      FieldName = 'TIP_OFICINA'
      Origin = 'SOFTEPS.OFICINAS.TIP_OFICINA'
      Size = 1
    end
  end
  object dtsregional: TDataSource
    DataSet = qryregionales
    Left = 222
    Top = 186
  end
  object qryregionales: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM REGIONALES')
    Left = 462
    Top = 16
    object qryregionalesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.REGIONALES.COD_REGIONAL'
      Size = 3
    end
    object qryregionalesNOM_REGIONAL: TStringField
      FieldName = 'NOM_REGIONAL'
      Origin = 'SOFTEPS.REGIONALES.NOM_REGIONAL'
      Size = 50
    end
  end
  object qryciudades1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CIUDADES WHERE COD_DEPARTAMENTO = :'#39'CODIGO'#39)
    Left = 558
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object StringField1: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.CIUDADES.COD_DEPARTAMENTO'
      Required = True
      Visible = False
      Size = 2
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = qrydepartamentos
      LookupKeyFields = 'cod_departamento'
      LookupResultField = 'nom_departamento'
      KeyFields = 'COD_DEPARTAMENTO'
      Size = 30
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.COD_CIUDAD'
      Required = True
      Visible = False
      Size = 3
    end
    object StringField4: TStringField
      DisplayLabel = 'Nombre Ciudad'
      FieldName = 'NOM_CIUDAD'
      Origin = 'SOFTEPS.CIUDADES.NOM_CIUDAD'
      Size = 35
    end
    object StringField5: TStringField
      DisplayLabel = 'Alto Riesgo'
      FieldName = 'POR_ALTO_RIE'
      Origin = 'SOFTEPS.CIUDADES.POR_ALTO_RIE'
      Size = 3
    end
    object StringField6: TStringField
      DisplayLabel = 'Regional'
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CIUDADES.COD_REGIONAL'
      Size = 3
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Valor UPC'
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.CIUDADES.VALOR_UPC'
    end
    object StringField7: TStringField
      DisplayLabel = 'Centro Costos'
      FieldName = 'CEN_COSTO'
      Origin = 'SOFTEPS.CIUDADES.CEN_COSTO'
      Size = 6
    end
  end
  object qrycargos: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 366
    Top = 132
    object qrycargosCOD_CARGO: TStringField
      FieldName = 'COD_CARGO'
      Origin = 'SOFTEPS.CARGOS.COD_CARGO'
      Size = 5
    end
    object qrycargosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.CARGOS.COD_OFICINA'
      Size = 3
    end
    object qrycargosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.CARGOS.COD_REGIONAL'
      Size = 3
    end
    object qrycargosNOM_CARGO: TStringField
      FieldName = 'NOM_CARGO'
      Origin = 'SOFTEPS.CARGOS.NOM_CARGO'
      Size = 100
    end
  end
  object qryusuarios: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 292
    Top = 124
    object qryusuariosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.USUARIOS.TIP_DOCUMENTO'
      Required = True
      Size = 3
    end
    object qryusuariosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.USUARIOS.NUM_DOCUMENTO'
      Required = True
      Size = 18
    end
    object qryusuariosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.USUARIOS.COD_ESTADO'
      Required = True
      Size = 2
    end
    object qryusuariosCOD_USUARIO: TStringField
      FieldName = 'COD_USUARIO'
      Origin = 'SOFTEPS.USUARIOS.COD_USUARIO'
      Required = True
    end
    object qryusuariosNOM_USUARIO: TStringField
      FieldName = 'NOM_USUARIO'
      Origin = 'SOFTEPS.USUARIOS.NOM_USUARIO'
      Required = True
      Size = 30
    end
    object qryusuariosPWD_USUARIO: TStringField
      FieldName = 'PWD_USUARIO'
      Origin = 'SOFTEPS.USUARIOS.PWD_USUARIO'
      Required = True
    end
    object qryusuariosFEC_EXPIRACION: TDateTimeField
      FieldName = 'FEC_EXPIRACION'
      Origin = 'SOFTEPS.USUARIOS.FEC_EXPIRACION'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qryusuariosNIV_USUARIO: TFloatField
      FieldName = 'NIV_USUARIO'
      Origin = 'SOFTEPS.USUARIOS.NIV_USUARIO'
    end
    object qryusuariosUSU_LOGUEADO: TFloatField
      FieldName = 'USU_LOGUEADO'
      Origin = 'SOFTEPS.USUARIOS.USU_LOGUEADO'
    end
    object qryusuariosULT_FEC_LOG: TDateTimeField
      FieldName = 'ULT_FEC_LOG'
      Origin = 'SOFTEPS.USUARIOS.ULT_FEC_LOG'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qryusuariosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.USUARIOS.COD_OFICINA'
      Size = 3
    end
    object qryusuariosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.USUARIOS.COD_REGIONAL'
      Size = 3
    end
    object qryusuariosCOD_CARGO: TStringField
      FieldName = 'COD_CARGO'
      Origin = 'SOFTEPS.USUARIOS.COD_CARGO'
      Size = 5
    end
  end
  object dtstiposdocumentos: TDataSource
    DataSet = qrytiposdocuementos
    Left = 36
    Top = 122
  end
  object qrytiposdocuementos: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TIPOS_DOCUMENTOS')
    Left = 388
    Top = 62
  end
  object qryestados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ESTADOS')
    Left = 232
    Top = 124
  end
  object qrylogin: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SYS.USER$')
    Left = 90
    Top = 178
    object qryloginUSER: TFloatField
      FieldName = 'USER#'
    end
    object qryloginNAME: TStringField
      FieldName = 'NAME'
      Size = 30
    end
    object qryloginTYPE: TFloatField
      FieldName = 'TYPE#'
    end
    object qryloginPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 30
    end
    object qryloginDATATS: TFloatField
      FieldName = 'DATATS#'
    end
    object qryloginTEMPTS: TFloatField
      FieldName = 'TEMPTS#'
    end
    object qryloginCTIME: TDateTimeField
      FieldName = 'CTIME'
    end
    object qryloginPTIME: TDateTimeField
      FieldName = 'PTIME'
    end
    object qryloginEXPTIME: TDateTimeField
      FieldName = 'EXPTIME'
    end
    object qryloginLTIME: TDateTimeField
      FieldName = 'LTIME'
    end
    object qryloginRESOURCE: TFloatField
      FieldName = 'RESOURCE$'
    end
    object qryloginAUDIT: TStringField
      FieldName = 'AUDIT$'
      Size = 38
    end
    object qryloginDEFROLE: TFloatField
      FieldName = 'DEFROLE'
    end
    object qryloginDEFGRP: TFloatField
      FieldName = 'DEFGRP#'
    end
    object qryloginDEFGRP_SEQ: TFloatField
      FieldName = 'DEFGRP_SEQ#'
    end
    object qryloginASTATUS: TFloatField
      FieldName = 'ASTATUS'
    end
    object qryloginLCOUNT: TFloatField
      FieldName = 'LCOUNT'
    end
    object qryloginDEFSCHCLASS: TStringField
      FieldName = 'DEFSCHCLASS'
      Size = 30
    end
    object qryloginEXT_USERNAME: TMemoField
      FieldName = 'EXT_USERNAME'
      BlobType = ftMemo
      Size = 4000
    end
    object qryloginSPARE1: TFloatField
      FieldName = 'SPARE1'
    end
    object qryloginSPARE2: TFloatField
      FieldName = 'SPARE2'
    end
    object qryloginSPARE3: TFloatField
      FieldName = 'SPARE3'
    end
    object qryloginSPARE4: TMemoField
      FieldName = 'SPARE4'
      BlobType = ftMemo
      Size = 1000
    end
    object qryloginSPARE5: TMemoField
      FieldName = 'SPARE5'
      BlobType = ftMemo
      Size = 1000
    end
    object qryloginSPARE6: TDateTimeField
      FieldName = 'SPARE6'
    end
  end
  object qrymcestcos1: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ESTRUCTURA_COSTOS'
      'WHERE ANO_VAL_ESTRUCTURA_COST = :ANO')
    Left = 492
    Top = 162
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ANO'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcestcos1COD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.COD_GRUPO_ETA'
    end
    object qrymcestcos1VAL_ESTRUCTURA_COST: TFloatField
      FieldName = 'VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.VAL_ESTRUCTURA_COST'
    end
    object qrymcestcos1ANO_VAL_ESTRUCTURA_COST: TDateTimeField
      FieldName = 'ANO_VAL_ESTRUCTURA_COST'
      Origin = 'SOFTEPS.ESTRUCTURA_COSTOS.ANO_VAL_ESTRUCTURA_COST'
    end
  end
  object tbletareos: TTable
    DatabaseName = 'softeps'
    TableName = 'GRUPOS_ETAREOS'
    Left = 366
    Top = 200
    object tbletareosCOD_GRUPO_ETA: TFloatField
      FieldName = 'COD_GRUPO_ETA'
      Required = True
    end
    object tbletareosINI_GRUPO_ETA: TFloatField
      FieldName = 'INI_GRUPO_ETA'
    end
    object tbletareosFIN_GRUPO_ETA: TFloatField
      FieldName = 'FIN_GRUPO_ETA'
    end
    object tbletareosSEXO_GRUPO_ETA: TStringField
      FieldName = 'SEXO_GRUPO_ETA'
      Size = 1
    end
  end
  object qrymcvalores: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM VALORESANULESCOMP'
      'WHERE ANO = :ANO')
    Left = 306
    Top = 258
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ANO'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrymcvaloresANO: TDateTimeField
      FieldName = 'ANO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.ANO'
    end
    object qrymcvaloresSAL_MINIMO: TFloatField
      FieldName = 'SAL_MINIMO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SAL_MINIMO'
    end
    object qrymcvaloresUPC: TFloatField
      FieldName = 'UPC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.UPC'
    end
    object qrymcvaloresPYP: TFloatField
      FieldName = 'PYP'
      Origin = 'SOFTEPS.VALORESANULESCOMP.PYP'
    end
    object qrymcvaloresSOL: TFloatField
      FieldName = 'SOL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SOL'
    end
    object qrymcvaloresRIESGO: TFloatField
      FieldName = 'RIESGO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.RIESGO'
    end
    object qrymcvaloresVAL_UPC_DIA_NORMAL: TFloatField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_NORMAL'
    end
    object qrymcvaloresVAL_UPC_DIA_ESPECIAL: TFloatField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_ESPECIAL'
    end
    object qrymcvaloresPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_COTIZACION'
    end
    object qrymcvaloresPOR_ENFERMEDAD_GENERAL: TFloatField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_ENFERMEDAD_GENERAL'
    end
    object qrymcvaloresPOR_PROVISION_INC: TFloatField
      FieldName = 'POR_PROVISION_INC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PROVISION_INC'
    end
    object qrymcvaloresPOR_PYP_LIQUIDACION: TFloatField
      FieldName = 'POR_PYP_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PYP_LIQUIDACION'
    end
    object qrymcvaloresPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object tblinteres: TTable
    DatabaseName = 'softeps'
    TableName = 'INTERESES'
    Left = 410
    Top = 202
    object tblinteresFEC_INTERESES: TDateTimeField
      FieldName = 'FEC_INTERESES'
      Required = True
    end
    object tblinteresVAL_ANUL: TFloatField
      FieldName = 'VAL_ANUL'
      Required = True
    end
    object tblinteresVAL_MENSUAL: TFloatField
      FieldName = 'VAL_MENSUAL'
      Required = True
    end
    object tblinteresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Required = True
      Size = 255
    end
  end
end

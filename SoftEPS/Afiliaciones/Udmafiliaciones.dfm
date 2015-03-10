object dmafiliaciones: Tdmafiliaciones
  OldCreateOrder = False
  Left = 37
  Top = 100
  Height = 448
  Width = 718
  object tbltipos_documentos: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_DOCUMENTOS'
    Left = 288
    Top = 16
  end
  object tblocupaciones: TTable
    DatabaseName = 'softeps'
    TableName = 'OCUPACIONES'
    Left = 288
    Top = 64
  end
  object tblsexo: TTable
    DatabaseName = 'softeps'
    TableName = 'SEXOS'
    Left = 288
    Top = 112
  end
  object tblestratos: TTable
    DatabaseName = 'softeps'
    TableName = 'ESTRATOS'
    Left = 296
    Top = 160
  end
  object tbldiscapacidades: TTable
    DatabaseName = 'softeps'
    TableName = 'DISCAPACIDADES'
    Left = 296
    Top = 208
  end
  object tblestadosciviles: TTable
    DatabaseName = 'softeps'
    TableName = 'ESTADOS_CIVILES'
    Left = 296
    Top = 256
  end
  object tblescolaridad: TTable
    DatabaseName = 'softeps'
    TableName = 'ESCOLARIDAD'
    Left = 296
    Top = 304
  end
  object tblprofesion: TTable
    DatabaseName = 'softeps'
    TableName = 'PROFESIONES'
    Left = 296
    Top = 360
  end
  object tblzonas: TTable
    DatabaseName = 'softeps'
    TableName = 'ZONAS'
    Left = 424
    Top = 16
  end
  object tbltiposafiliados: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_AFILIADOS'
    Left = 424
    Top = 64
  end
  object tblmodalidadtrabajo: TTable
    DatabaseName = 'softeps'
    TableName = 'MODALIDAD_TRABAJOS'
    Left = 424
    Top = 112
  end
  object tbldepartamentos: TTable
    DatabaseName = 'softeps'
    TableName = 'DEPARTAMENTOS'
    Left = 47
    Top = 206
    object tbldepartamentoscod_departamento: TStringField
      FieldName = 'cod_departamento'
      Required = True
      Size = 2
    end
    object tbldepartamentosnom_departamento: TStringField
      FieldName = 'nom_departamento'
      Required = True
      Size = 35
    end
  end
  object qryciudades: TQuery
    AutoRefresh = True
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select cod_ciudad,nom_ciudad,cod_departamento'
      'from ciudades '
      'where cod_departamento = :cod_departamento'
      '')
    Left = 120
    Top = 188
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_departamento'
        ParamType = ptInput
      end>
    object qryciudadescod_ciudad: TStringField
      FieldName = 'cod_ciudad'
      Origin = 'DBUNIMEC.ciudades.cod_ciudad'
      FixedChar = True
      Size = 3
    end
    object qryciudadesnom_ciudad: TStringField
      FieldName = 'nom_ciudad'
      Origin = 'DBUNIMEC.ciudades.nom_ciudad'
      FixedChar = True
      Size = 35
    end
    object qryciudadescod_departamento: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DBUNIMEC.ciudades.cod_departamento'
      FixedChar = True
      Size = 2
    end
  end
  object qrybarrios: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT barrios.cod_departamento,   '
      '         barrios.cod_ciudad,   '
      '         barrios.cod_barrio,   '
      '         barrios.nom_barrio  '
      '    FROM barrios  '
      '   WHERE ( barrios.cod_departamento = :"cd_depto" ) AND  '
      '         ( barrios.cod_ciudad = :"cd_ciudad" ) ')
    Left = 192
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_depto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd_ciudad'
        ParamType = ptUnknown
      end>
    object qrybarrioscod_departamento: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DBUNIMEC.barrios.cod_departamento'
      FixedChar = True
      Size = 2
    end
    object qrybarrioscod_ciudad: TStringField
      FieldName = 'cod_ciudad'
      Origin = 'DBUNIMEC.barrios.cod_ciudad'
      FixedChar = True
      Size = 3
    end
    object qrybarrioscod_barrio: TStringField
      FieldName = 'cod_barrio'
      Origin = 'DBUNIMEC.barrios.cod_barrio'
      FixedChar = True
      Size = 3
    end
    object qrybarriosnom_barrio: TStringField
      FieldName = 'nom_barrio'
      Origin = 'DBUNIMEC.barrios.nom_barrio'
      FixedChar = True
      Size = 50
    end
  end
  object tblactividadeconomica: TTable
    DatabaseName = 'softeps'
    TableName = 'ACTIVIDADES_ECONOMICAS'
    Left = 432
    Top = 176
  end
  object tbltipoaportante: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_APORTANTES'
    Left = 432
    Top = 232
  end
  object tbltipopersona: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_PERSONAS'
    Left = 432
    Top = 280
  end
  object tbltipoempresa: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_EMPRESAS'
    Left = 432
    Top = 328
  end
  object tblperiododecompensacion: TTable
    DatabaseName = 'softeps'
    TableName = 'PRESENTACION_COMPENSACION'
    Left = 432
    Top = 376
  end
  object qryciudades1: TQuery
    AutoRefresh = True
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select cod_ciudad,nom_ciudad,cod_departamento'
      'from ciudades '
      'where cod_departamento = :cd_depto '
      '')
    Left = 124
    Top = 249
    ParamData = <
      item
        DataType = ftString
        Name = 'cd_depto'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'cod_ciudad'
      Origin = 'DBUNIMEC.ciudades.cod_ciudad'
      FixedChar = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'nom_ciudad'
      Origin = 'DBUNIMEC.ciudades.nom_ciudad'
      FixedChar = True
      Size = 35
    end
    object StringField3: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DBUNIMEC.ciudades.cod_departamento'
      FixedChar = True
      Size = 2
    end
  end
  object tblestados: TTable
    DatabaseName = 'softeps'
    TableName = 'ESTADOS'
    Left = 536
    Top = 8
  end
  object tblparentescos: TTable
    DatabaseName = 'softeps'
    TableName = 'PARENTESCOS'
    Left = 536
    Top = 72
  end
  object tblciudades: TTable
    DatabaseName = 'softeps'
    TableName = 'CIUDADES'
    Left = 128
    Top = 16
  end
  object tbltipos_salarios: TTable
    DatabaseName = 'softeps'
    TableName = 'TIPOS_SALARIOS'
    Left = 536
    Top = 128
  end
  object tblrelacion_adicional: TTable
    DatabaseName = 'softeps'
    TableName = 'RELACION_ADICIONAL'
    Left = 560
    Top = 184
  end
  object softeps: TDatabase
    AliasName = 'softeps'
    Connected = True
    DatabaseName = 'softeps'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=softars'
      'SERVER NAME=SALUDVIDA1'
      'USER NAME=consulta'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'BLOB EDIT LOGGING='
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'DATE MODE=0'
      'SCHEMA CACHE TIME=-1'
      'MAX QUERY TIME=300'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'HOST NAME='
      'APPLICATION NAME=Afiliaciones'
      'NATIONAL LANG NAME='
      'ENABLE BCD=FALSE'
      'TDS PACKET SIZE=4096'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'PASSWORD=1234')
    SessionName = 'Default'
    Left = 28
    Top = 12
  end
  object tblempresas: TTable
    DatabaseName = 'softeps'
    TableName = 'dbo.empresas'
    Left = 128
    Top = 74
  end
  object qrycompania: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM COMPANIA')
    Left = 62
    Top = 128
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
  object qrysalariominimo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from valoresanulescomp where ano =:'#39'ano'#39)
    Left = 46
    Top = 276
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptUnknown
        Value = 0d
      end>
    object qrysalariominimoANO: TDateTimeField
      FieldName = 'ANO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.ANO'
    end
    object qrysalariominimoSAL_MINIMO: TFloatField
      FieldName = 'SAL_MINIMO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SAL_MINIMO'
    end
    object qrysalariominimoUPC: TFloatField
      FieldName = 'UPC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.UPC'
    end
    object qrysalariominimoPYP: TFloatField
      FieldName = 'PYP'
      Origin = 'SOFTEPS.VALORESANULESCOMP.PYP'
    end
    object qrysalariominimoSOL: TFloatField
      FieldName = 'SOL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.SOL'
    end
    object qrysalariominimoRIESGO: TFloatField
      FieldName = 'RIESGO'
      Origin = 'SOFTEPS.VALORESANULESCOMP.RIESGO'
    end
    object qrysalariominimoVAL_UPC_DIA_NORMAL: TFloatField
      FieldName = 'VAL_UPC_DIA_NORMAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_NORMAL'
    end
    object qrysalariominimoVAL_UPC_DIA_ESPECIAL: TFloatField
      FieldName = 'VAL_UPC_DIA_ESPECIAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.VAL_UPC_DIA_ESPECIAL'
    end
    object qrysalariominimoPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_COTIZACION'
    end
    object qrysalariominimoPOR_ENFERMEDAD_GENERAL: TFloatField
      FieldName = 'POR_ENFERMEDAD_GENERAL'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_ENFERMEDAD_GENERAL'
    end
    object qrysalariominimoPOR_PROVISION_INC: TFloatField
      FieldName = 'POR_PROVISION_INC'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PROVISION_INC'
    end
    object qrysalariominimoPOR_PYP_LIQUIDACION: TFloatField
      FieldName = 'POR_PYP_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_PYP_LIQUIDACION'
    end
    object qrysalariominimoPOR_SOLIDARIDAD_LIQUIDACION: TFloatField
      FieldName = 'POR_SOLIDARIDAD_LIQUIDACION'
      Origin = 'SOFTEPS.VALORESANULESCOMP.POR_SOLIDARIDAD_LIQUIDACION'
    end
  end
  object qryciudades2: TQuery
    AutoRefresh = True
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select cod_ciudad,nom_ciudad,cod_departamento'
      'from ciudades '
      'where cod_departamento = :cod_departamento'
      '')
    Left = 196
    Top = 218
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_departamento'
        ParamType = ptInput
      end>
    object StringField4: TStringField
      FieldName = 'cod_ciudad'
      Origin = 'DBUNIMEC.ciudades.cod_ciudad'
      FixedChar = True
      Size = 3
    end
    object StringField5: TStringField
      FieldName = 'nom_ciudad'
      Origin = 'DBUNIMEC.ciudades.nom_ciudad'
      FixedChar = True
      Size = 35
    end
    object StringField6: TStringField
      FieldName = 'cod_departamento'
      Origin = 'DBUNIMEC.ciudades.cod_departamento'
      FixedChar = True
      Size = 2
    end
  end
  object qryrepradicado: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select num_formato_afil,afiliados.tip_documento, afiliados.num_d' +
        'ocumento, pri_apellido, seg_apellido, pri_nombre, seg_nombre,cod' +
        '_modalidad_tra, tip_documento_emp,num_documento_emp, nom_empresa' +
        ', fec_radicacion'
      'from afiliados, afiliados_empresas,empresas'
      'where fec_radicacion = :fecha'
      'and cod_tipo_afil = '#39'C'#39
      'and afiliados.num_documento = num_documento_afi'
      'and num_documento_emp= empresas.num_documento')
    Left = 196
    Top = 140
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'fecha'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qryrepradicadoNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryrepradicadoTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryrepradicadoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryrepradicadoPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qryrepradicadoSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qryrepradicadoPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qryrepradicadoSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qryrepradicadoCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryrepradicadoTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryrepradicadoNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryrepradicadoNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qryrepradicadoFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
  end
end

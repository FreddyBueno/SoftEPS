object dmcomision: Tdmcomision
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 249
  Width = 309
  object Database1: TDatabase
    AliasName = 'softeps'
    DatabaseName = 'softeps'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=DBO'
      'USER NAME=DBO'
      'NET PROTOCOL=TCP/IP'
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
      'LIST SYNONYMS=ALL'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=PIPO')
    SessionName = 'Default'
    Left = 22
    Top = 16
  end
  object qrycomisiones: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM COMISIONES'
      'WHERE FEC_CORTE = :FECHA')
    Left = 16
    Top = 160
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrycomisionesTIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object qrycomisionesNUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_ASE'
      Size = 15
    end
    object qrycomisionesTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qrycomisionesNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_AFI'
      Size = 15
    end
    object qrycomisionesPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.COMISIONES.PER_COMPENSACION'
      Size = 7
    end
    object qrycomisionesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.COMISIONES.NUM_DECLARACION'
    end
    object qrycomisionesFEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Origin = 'SOFTEPS.COMISIONES.FEC_CORTE'
    end
  end
  object qrycalculo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select acesores.tip_documento,acesores.num_documento, afi_tipo_d' +
        'oc, afi_numero_doc, declaraciones.periodo_compensado, declaracio' +
        'nes.num_declaracion   '
      
        'from afiliados_compensados, declaraciones,afiliados, acesores,em' +
        'presas'
      
        'where afiliados_compensados.dias = '#39'30'#39' and afiliados_compensado' +
        's.tip_beneficiario ='#39'C'#39
      
        'and afiliados_compensados.num_declaracion = declaraciones.num_de' +
        'claracion'
      'and afiliados_compensados.id_multiafiliado is null'
      'and afiliados_compensados.emp_numero_doc <> '#39'830040087'#39
      'and afiliados_compensados.emp_numero_doc <> '#39'830096513'#39
      'and emp_tipo_doc = empresas.tip_documento'
      'and emp_numero_doc = empresas.num_documento'
      'and afi_tipo_doc   = afiliados.tip_documento'
      'and afi_numero_doc = afiliados.num_documento'
      'and ace_tip_doc   = acesores.tip_documento'
      'and ace_numero_doc = acesores.num_documento'
      
        'and afi_tipo_doc||afi_numero_doc not in (select tip_documento_af' +
        'i||num_documento_afi from comisiones)'
      'ORDER BY TO_DATE(periodo_compensado,'#39'MM/YYYY'#39') ASC'
      '')
    Left = 88
    Top = 120
    object qrycalculoTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrycalculoNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrycalculoAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrycalculoAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrycalculoPERIODO_COMPENSADO: TStringField
      FieldName = 'PERIODO_COMPENSADO'
      Size = 10
    end
    object qrycalculoNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
    end
  end
  object qryrevcomisiones: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM COMISIONES'
      'WHERE TIP_DOCUMENTO_AFI = :TP'
      'AND NUM_DOCUMENTO_AFI = :NM')
    Left = 18
    Top = 70
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NM'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryrevcomisionesTIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object qryrevcomisionesNUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_ASE'
      Size = 15
    end
    object qryrevcomisionesTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qryrevcomisionesNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_AFI'
      Size = 15
    end
    object qryrevcomisionesPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.COMISIONES.PER_COMPENSACION'
      Size = 7
    end
    object qryrevcomisionesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.COMISIONES.NUM_DECLARACION'
    end
    object qryrevcomisionesFEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Origin = 'SOFTEPS.COMISIONES.FEC_CORTE'
    end
  end
  object tblcomisiones: TTable
    DatabaseName = 'softeps'
    TableName = 'COMISIONES'
    Left = 82
    Top = 24
    object tblcomisionesTIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Required = True
      Size = 3
    end
    object tblcomisionesNUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Required = True
      Size = 15
    end
    object tblcomisionesTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Required = True
      Size = 3
    end
    object tblcomisionesNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Required = True
      Size = 15
    end
    object tblcomisionesPER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Required = True
      Size = 7
    end
    object tblcomisionesNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Required = True
    end
    object tblcomisionesFEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Required = True
    end
  end
  object qrycfechacorte: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'SELECT TIP_DOCUMENTO_ASE, NUM_DOCUMENTO_ASE, AFILIADOS_COMPENSAD' +
        'OS.AFI_NUMERO_DOC, AFILIADOS_COMPENSADOS.AFI_TIPO_DOC, PER_COMPE' +
        'NSACION,AFILIADOS_COMPENSADOS.NUM_DECLARACION, NOM_EMPRESA,'
      'PRI_NOMBRE, PRI_APELLIDO'
      'FROM COMISIONES, EMPRESAS,AFILIADOS_COMPENSADOS,AFILIADOS'
      'WHERE FEC_CORTE = :FECHA'
      'AND TIP_DOCUMENTO_AFI = AFI_TIPO_DOC'
      'AND NUM_DOCUMENTO_AFI = AFI_NUMERO_DOC'
      'AND TIP_DOCUMENTO_AFI = AFILIADOS.TIP_DOCUMENTO'
      'AND NUM_DOCUMENTO_AFI = AFILIADOS.NUM_DOCUMENTO'
      
        'AND COMISIONES.NUM_DECLARACION = AFILIADOS_COMPENSADOS.NUM_DECLA' +
        'RACION'
      'AND EMP_TIPO_DOC = EMPRESAS.TIP_DOCUMENTO'
      'AND EMP_NUMERO_DOC = EMPRESAS.NUM_DOCUMENTO'
      'ORDER BY NUM_DOCUMENTO_ASE')
    Left = 90
    Top = 72
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qrycfechacorteTIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object qrycfechacorteNUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_ASE'
      Size = 15
    end
    object qrycfechacorteAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_NUMERO_DOC'
      Size = 18
    end
    object qrycfechacorteAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.AFI_TIPO_DOC'
      Size = 3
    end
    object qrycfechacortePER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.COMISIONES.PER_COMPENSACION'
      Size = 7
    end
    object qrycfechacorteNUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.AFILIADOS_COMPENSADOS.NUM_DECLARACION'
    end
    object qrycfechacorteNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.EMPRESAS.NOM_EMPRESA'
      Size = 100
    end
    object qrycfechacortePRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qrycfechacortePRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
  end
  object qryasesores: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ACESORES'
      'ORDER BY NUM_DOCUMENTO')
    Left = 18
    Top = 114
    object qryasesoresTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.TIP_DOCUMENTO'
      Size = 3
    end
    object qryasesoresCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.ACESORES.COD_ESTADO'
      Size = 2
    end
    object qryasesoresNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.NUM_DOCUMENTO'
      Size = 18
    end
    object qryasesoresPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.PRI_APELLIDO'
      Size = 25
    end
    object qryasesoresSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.SEG_APELLIDO'
      Size = 25
    end
    object qryasesoresPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.PRI_NOMBRE'
      Size = 25
    end
    object qryasesoresSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.SEG_NOMBRE'
      Size = 25
    end
    object qryasesoresCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.ACESORES.COD_REGIONAL'
      Size = 3
    end
    object qryasesoresTIP_CONTRATO: TStringField
      FieldName = 'TIP_CONTRATO'
      Origin = 'SOFTEPS.ACESORES.TIP_CONTRATO'
      Size = 1
    end
  end
  object qryliqcomisiones: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT COUNT(*) AS AFILIADOS FROM COMISIONES'
      'WHERE TIP_DOCUMENTO_ASE = :TIP_DOCUMENTO'
      'AND NUM_DOCUMENTO_ASE = :NUM_DOCUMENTO'
      'AND FEC_CORTE = :FECHA')
    Left = 88
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'TIP_DOCUMENTO'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUM_DOCUMENTO'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object qryliqcomisionesAFILIADOS: TFloatField
      FieldName = 'AFILIADOS'
    end
  end
  object qryliqvalor: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'select * from valor_comisiones'
      'where cod_regional = :reg'
      '    and contrato = :con '
      '    and ran_inicial <= :afi1 '
      '    and ran_final >= :afi2')
    Left = 136
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'reg'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'con'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'afi1'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'afi2'
        ParamType = ptInputOutput
        Value = 0
      end>
    object qryliqvalorCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.COD_REGIONAL'
      Size = 3
    end
    object qryliqvalorCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'SOFTEPS.VALOR_COMISIONES.CONTRATO'
      Size = 1
    end
    object qryliqvalorRAN_INICIAL: TFloatField
      FieldName = 'RAN_INICIAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.RAN_INICIAL'
    end
    object qryliqvalorRAN_FINAL: TFloatField
      FieldName = 'RAN_FINAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.RAN_FINAL'
    end
    object qryliqvalorVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'SOFTEPS.VALOR_COMISIONES.VALOR'
    end
  end
  object tblliquidacion: TTable
    DatabaseName = 'softeps'
    TableName = 'LIQUIDACION_COMISIONES'
    Left = 132
    Top = 26
    object tblliquidacionTIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Required = True
      Size = 3
    end
    object tblliquidacionNUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Required = True
      Size = 15
    end
    object tblliquidacionNUM_AFILIADOS: TFloatField
      FieldName = 'NUM_AFILIADOS'
      Required = True
    end
    object tblliquidacionTOTAL_COMISION: TFloatField
      FieldName = 'TOTAL_COMISION'
      Required = True
    end
    object tblliquidacionFEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Required = True
    end
  end
  object qryconliq: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM LIQUIDACION_COMISIONES'
      'WHERE FEC_CORTE = :FECHA')
    Left = 138
    Top = 124
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
  end
  object qryfasesor: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ACESORES'
      'WHERE TIP_DOCUMENTO = :TIPO'
      'AND NUM_DOCUMENTO = :NUMERO')
    Left = 138
    Top = 172
    ParamData = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInputOutput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInputOutput
        Value = ''
      end>
    object qryfasesorTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.TIP_DOCUMENTO'
      Size = 3
    end
    object qryfasesorCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.ACESORES.COD_ESTADO'
      Size = 2
    end
    object qryfasesorNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.NUM_DOCUMENTO'
      Size = 18
    end
    object qryfasesorPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.PRI_APELLIDO'
      Size = 25
    end
    object qryfasesorSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.SEG_APELLIDO'
      Size = 25
    end
    object qryfasesorPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.PRI_NOMBRE'
      Size = 25
    end
    object qryfasesorSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.SEG_NOMBRE'
      Size = 25
    end
    object qryfasesorCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.ACESORES.COD_REGIONAL'
      Size = 3
    end
    object qryfasesorTIP_CONTRATO: TStringField
      FieldName = 'TIP_CONTRATO'
      Origin = 'SOFTEPS.ACESORES.TIP_CONTRATO'
      Size = 1
    end
  end
  object tblregionales: TTable
    DatabaseName = 'softeps'
    TableName = 'REGIONALES'
    Left = 216
    Top = 38
    object tblregionalesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Required = True
      Size = 3
    end
    object tblregionalesNOM_REGIONAL: TStringField
      FieldName = 'NOM_REGIONAL'
      Size = 50
    end
  end
  object qryfeccorte: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT DISTINCT(FEC_CORTE) FROM COMISIONES'
      'ORDER BY FEC_CORTE')
    Left = 220
    Top = 82
    object qryfeccorteFEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Origin = 'SOFTEPS.COMISIONES.FEC_CORTE'
    end
  end
  object qryconcomision: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM VALOR_COMISIONES')
    Left = 210
    Top = 134
    object qryconcomisionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.COD_REGIONAL'
      Size = 3
    end
    object qryconcomisionCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Origin = 'SOFTEPS.VALOR_COMISIONES.CONTRATO'
      Size = 1
    end
    object qryconcomisionRAN_INICIAL: TFloatField
      FieldName = 'RAN_INICIAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.RAN_INICIAL'
    end
    object qryconcomisionRAN_FINAL: TFloatField
      FieldName = 'RAN_FINAL'
      Origin = 'SOFTEPS.VALOR_COMISIONES.RAN_FINAL'
    end
    object qryconcomisionVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'SOFTEPS.VALOR_COMISIONES.VALOR'
    end
  end
end

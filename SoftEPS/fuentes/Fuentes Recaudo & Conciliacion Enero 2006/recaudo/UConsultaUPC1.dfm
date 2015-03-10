object frmconsultaafiliadosben1: Tfrmconsultaafiliadosben1
  Left = 35
  Top = 232
  Width = 754
  Height = 351
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta  de  Beneficiarios Adicionales'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 324
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 744
      Height = 322
      Align = alClient
      Color = clActiveBorder
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'TIP_DOCUMENTO_COT'
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'NUM_DOCUMENTO_COT'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'TIP_DOCUMENTO'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'NUM_DOCUMENTO'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'PRI_APELLIDO'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SEG_APELLIDO'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SEG_APELLIDO'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SEG_NOMBRE'
          Width = 64
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'FEC_RADICACION'
          Width = 64
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 72
  end
  object Query1: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT TIP_DOCUMENTO_COT,NUM_DOCUMENTO_COT,AFILIADOS.*'
      'FROM  RELACION_AFILIADOS,AFILIADOS '
      'WHERE TIP_DOCUMENTO_BEN = TIP_DOCUMENTO AND'
      'NUM_DOCUMENTO_BEN = NUM_DOCUMENTO AND '
      'COD_TIPO_AFIL = '#39'A'#39
      'ORDER BY  TIP_DOCUMENTO_COT,NUM_DOCUMENTO_COT')
    Left = 328
    Top = 104
    object Query1TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Size = 3
    end
    object Query1NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Size = 18
    end
    object Query1TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object Query1NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object Query1COD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object Query1COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object Query1COD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object Query1COD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Size = 1
    end
    object Query1COD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Size = 3
    end
    object Query1COD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Size = 3
    end
    object Query1COD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Size = 3
    end
    object Query1COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object Query1COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object Query1COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object Query1PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object Query1SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object Query1PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object Query1SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object Query1FEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object Query1FEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
    end
    object Query1FEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object Query1EPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Size = 3
    end
    object Query1EPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object Query1COD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object Query1COD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object Query1COD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Size = 3
    end
    object Query1COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object Query1ACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Size = 3
    end
    object Query1ACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Size = 18
    end
    object Query1COD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Size = 1
    end
    object Query1NUM_SEMANA_COTIZA: TBCDField
      FieldName = 'NUM_SEMANA_COTIZA'
      Precision = 38
      Size = 0
    end
    object Query1FEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
    end
    object Query1NUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Size = 10
    end
    object Query1DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Size = 50
    end
    object Query1TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
    end
    object Query1TEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
    end
    object Query1CEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
    end
    object Query1EML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Size = 50
    end
    object Query1FEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object Query1TIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object Query1NUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object Query1TIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object Query1NUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Size = 18
    end
    object Query1TIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object Query1NUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object Query1SEM_COTIZACION: TBCDField
      FieldName = 'SEM_COTIZACION'
      Precision = 38
      Size = 0
    end
  end
end

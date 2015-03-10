object frmmedio_notificacion: Tfrmmedio_notificacion
  Left = 221
  Top = 155
  Width = 615
  Height = 342
  Caption = 'MEDIO DE NOTIFICACION'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 315
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 26
      Top = 8
      Width = 183
      Height = 59
      Caption = 'Num Incapacidad'
      TabOrder = 0
      object edtincapacidad: TEdit
        Left = 10
        Top = 22
        Width = 149
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
        OnExit = edtincapacidadExit
      end
    end
    object Panel2: TPanel
      Left = 218
      Top = 8
      Width = 373
      Height = 59
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 8
        Width = 77
        Height = 13
        Caption = 'Fec Notificaci'#243'n'
      end
      object Label2: TLabel
        Left = 118
        Top = 6
        Width = 88
        Height = 13
        Caption = 'Medio Notificaci'#243'n'
      end
      object Label3: TLabel
        Left = 246
        Top = 6
        Width = 39
        Height = 13
        Caption = 'No Guia'
      end
      object edtguia: TEdit
        Left = 248
        Top = 24
        Width = 103
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 2
      end
      object cmbmedionot: TDBLookupComboBox
        Left = 118
        Top = 24
        Width = 117
        Height = 21
        Color = clMoneyGreen
        KeyField = 'MEDIO_NOTIFICACION'
        ListField = 'MEDIO_NOTIFICACION'
        ListSource = dtsmedio
        TabOrder = 1
        OnClick = cmbmedionotClick
      end
      object dtpfecnotificacion: TDateTimePicker
        Left = 8
        Top = 24
        Width = 99
        Height = 21
        Date = 38610.371680949080000000
        Time = 38610.371680949080000000
        Color = clMoneyGreen
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 536
      Top = 76
      Width = 55
      Height = 25
      Caption = 'Ok'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object DBGrid1: TDBGrid
      Left = 26
      Top = 104
      Width = 565
      Height = 199
      Color = clMoneyGreen
      DataSource = dtsincapacidad
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object dtsincapacidad: TDataSource
    DataSet = qryincapacidades
    Left = 74
    Top = 76
  end
  object qryincapacidades: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INCAPACIDADES WHERE NUM_INCAPACIDAD= :NUM')
    Left = 108
    Top = 76
    object qryincapacidadesNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qryincapacidadesTIP_INCAPACIDAD: TStringField
      FieldName = 'TIP_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesFEC_EXPEDICION: TDateTimeField
      FieldName = 'FEC_EXPEDICION'
    end
    object qryincapacidadesTIP_DOCEMPRESA: TStringField
      FieldName = 'TIP_DOCEMPRESA'
      Size = 3
    end
    object qryincapacidadesNUM_DOCEMPRESA: TStringField
      FieldName = 'NUM_DOCEMPRESA'
      Size = 18
    end
    object qryincapacidadesAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qryincapacidadesAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qryincapacidadesCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 4
    end
    object qryincapacidadesCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Size = 15
    end
    object qryincapacidadesNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Size = 255
    end
    object qryincapacidadesDIA_INCAPACIDAD: TStringField
      FieldName = 'DIA_INCAPACIDAD'
      Size = 2
    end
    object qryincapacidadesDIA_LIQUIDADOS: TStringField
      FieldName = 'DIA_LIQUIDADOS'
      Size = 2
    end
    object qryincapacidadesFEC_INICIO: TDateTimeField
      FieldName = 'FEC_INICIO'
    end
    object qryincapacidadesPRO_INCAPACIDAD: TStringField
      FieldName = 'PRO_INCAPACIDAD'
      Size = 1
    end
    object qryincapacidadesSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesPRO_SALARIO_LIQUI: TBCDField
      FieldName = 'PRO_SALARIO_LIQUI'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesVAL_INCAPACIDAD: TBCDField
      FieldName = 'VAL_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesEST_INCAPACIDAD: TStringField
      FieldName = 'EST_INCAPACIDAD'
      Size = 3
    end
    object qryincapacidadesCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qryincapacidadesCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryincapacidadesFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qryincapacidadesTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qryincapacidadesTIP_NUM_USUARIO: TStringField
      FieldName = 'TIP_NUM_USUARIO'
      Size = 15
    end
    object qryincapacidadesFEC_TERMINACION: TDateTimeField
      FieldName = 'FEC_TERMINACION'
    end
    object qryincapacidadesFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qryincapacidadesNO_PRORROGA: TStringField
      FieldName = 'NO_PRORROGA'
      Size = 15
    end
    object qryincapacidadesTOT_DIAS_PRORROGA: TStringField
      FieldName = 'TOT_DIAS_PRORROGA'
      Size = 3
    end
    object qryincapacidadesNUM_RECEPCION: TStringField
      FieldName = 'NUM_RECEPCION'
      Size = 15
    end
    object qryincapacidadesFEC_NOTIFICACION: TDateTimeField
      FieldName = 'FEC_NOTIFICACION'
    end
    object qryincapacidadesMED_NOTIFICACION: TStringField
      FieldName = 'MED_NOTIFICACION'
      Size = 50
    end
    object qryincapacidadesNO_GUIA: TStringField
      FieldName = 'NO_GUIA'
      Size = 50
    end
  end
  object qrymedio: TADOQuery
    Active = True
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MEDIO_NOTIFICACION_INC')
    Left = 164
    Top = 76
  end
  object dtsmedio: TDataSource
    DataSet = qrymedio
    Left = 192
    Top = 76
  end
end

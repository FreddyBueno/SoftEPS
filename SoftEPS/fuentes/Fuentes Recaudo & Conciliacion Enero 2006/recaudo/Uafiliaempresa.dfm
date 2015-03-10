object frmafiliempresa: Tfrmafiliempresa
  Left = 236
  Top = 187
  Width = 731
  Height = 480
  Caption = 'Afiliado Por  empresa y Periodo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Width = 723
    Height = 118
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 73
      Width = 77
      Height = 13
      Caption = 'Tipo Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 102
      Top = 75
      Width = 94
      Height = 13
      Caption = 'Numero Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 292
      Top = 75
      Width = 179
      Height = 13
      Caption = 'Nombre o Razon Social  de  la mpresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 528
      Top = 77
      Width = 68
      Height = 13
      Caption = 'Mes Consultar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 132
      Top = 31
      Width = 413
      Height = 23
      Caption = 'CONSULTA  DE  AFILIADOS POR  EMPRESA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 575
      Top = 6
      Width = 73
      Height = 19
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object edtnumero: TEdit
      Left = 87
      Top = 91
      Width = 126
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = edtnumeroExit
    end
    object cbtipo: TComboBox
      Left = 18
      Top = 91
      Width = 65
      Height = 21
      Style = csDropDownList
      Color = clMoneyGreen
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 0
      Text = 'NIT'
      OnExit = cbtipoExit
      Items.Strings = (
        'CC'
        'NIT'
        'CE'
        'TI')
    end
    object msmes: TMaskEdit
      Left = 539
      Top = 93
      Width = 49
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 2
      Text = '  /    '
      OnExit = msmesExit
    end
    object edtnombre: TEdit
      Left = 216
      Top = 92
      Width = 321
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = -87
      Top = 60
      Width = 768
      Height = 8
      TabOrder = 4
    end
    object btnbuscar: TBitBtn
      Left = 611
      Top = 76
      Width = 85
      Height = 39
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = btnbuscarClick
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000CE0E0000D80E00000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
        FFFFFF0000000000000000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000DBDBDBDBFF93FF93930000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
        DBDBDBDBDBDBDBFF93FF939393939300006D6D6DFFFFFFFFFFFFFFFFFF009393
        DBDBDBDBDBDBDBFF93FF93939393939393006D6D6DFFFFFFFFFFFFFF00939393
        DBDBDBDBDBDBDBFF93FF9393939393939393006D6D6DFFFFFFFFFF0093939393
        DBDBDB00000000000000000093939393939393006D6D6DFFFFFF009393939393
        000000FFFFFFFFFFFFFFFFFF0000009393939393006D6DFFFFFF009393930000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000939393006D6D6DFFFF00939300FFFF
        FFFF00000000000000000000FFFFFFFFFF009393006D6D6DFFFF009300FFFFFF
        000093939393939393939393000000FFFFFF0093006D6D6D6DFF0000FFFFFF00
        93939393939393939393939393939300FFFFFF00006D6D6D6DFF00FFFFFF006E
        939393939393939393FFFFFF9393939300FFFFFF006D6D6D6DFF00FFFF009393
        6E9393939393939393939393FF93936E9300FFFF006D6D6DFFFF00FFFF009393
        936E6EDB9393939393939393FF6E6E939300FFFF006D6D6DFFFF00FFFF009393
        9393DBFFDB6E6E6E6E6E6E6E6E9393939300FFFF006D6DFFFFFF00FFFFFF0093
        939393DB93939393939393939393B69300FFFFFF006DFFFFFFFFFF00FFFFFF00
        93939393939393939393939393939300FFFFFF00FFFFFFFFFFFFFFFF00FFFFFF
        000000939393939393939393930000FFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFF00000000000000000000FFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFF0000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092006D6DFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFFFF0000DBDBDB92006D6DFFFFFFFFFFFFFFFFFFFF
        FFFFFF00000000000000000000DBFFFFDBDBDB00006D6DFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFDB000000006D6DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000006D6DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006D6DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D24000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 642
    Height = 335
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 640
      Height = 333
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 638
        Height = 331
        Align = alClient
        Color = clMoneyGreen
        DataSource = dsqconsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Panel3: TPanel
    Left = 642
    Top = 118
    Width = 81
    Height = 335
    Align = alRight
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 8
      Top = 96
      Width = 64
      Height = 149
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000DFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF00000000000000000000000000000000000000
        00003F3F007F7F007F7F007F7F00505050BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF
        0000000000000000000000000000003F3F00FFFF3FFFFF7FFFFF005F5F208080
        80808080BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF0000000000000000003F3F00FF
        FF3FFFFFBFFFFF005F5F20808080808080808080909090BFBFBFDFDFDFDFDFDF
        DFDFDFAFAFAF0000003F3F00FFFF3FFFFFBFFFFF003F3F008080808080808080
        80808080808080808080DFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFF
        FF003F3F00000000AFAFAFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F00000000000000000000AFAFAFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F0000
        0000000000000000000000000000AFAFAFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00
        FFFF00FFFF7FFFFF003F3F009F9F9F9F9F9F0000000000000000000000000000
        00AFAFAFDFDFDFDFDFDF0000000000000000000000000000009F9F9FDFDFDFDF
        DFDF9F9F9F000000000000000000000000000000DFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFAFAFDFDFDF
        CFAFAFCFAFAFDFDFDFBF7F7FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFBF7F7FDFDF
        DFCFAFAFCFAFAFDFDFDFAF6F6FDFDFDFAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF
        6F6FAF6F6FCFAFAFBF9F9FAF6F6FAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF6F6F
        9F3F3FBF9F9FDFDFDFA06060BF9F9FBF9F9FA06060BF9F9FBF9F9FBF9F9FA060
        60903030903030BF9F9FBF9F9FDFDFDFBF9F9FBF9F9FDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9F9FBF9F9FDFDFDF}
      Layout = blGlyphTop
    end
  end
  object dsqconsulta: TDataSource
    DataSet = qrylistapagos
    Left = 220
    Top = 140
  end
  object opguardar: TSaveDialog
    Left = 130
    Top = 86
  end
  object qryempresas: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM  EMPRESAS  WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_D' +
        'OCUMENTO = :"NUMERO"')
    Left = 337
    Top = 191
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
  object qrylistapagos: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'nit'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'empresa'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'fechai'
        DataType = ftDateTime
        Size = -1
        Value = 0d
      end
      item
        Name = 'fechaf'
        DataType = ftDateTime
        Size = -1
        Value = 0d
      end>
    SQL.Strings = (
      
        'select tip_documento_afi,num_documento_afi,pri_apellido,seg_apel' +
        'lido,pri_nombre,seg_nombre,'
      
        ' cod_modalidad_tra,fec_nacimiento,val_sueldo_afil,afiliados_empr' +
        'esas.cod_estado  '
      'from afiliados_empresas,afiliados '
      'where tip_documento_emp = :"nit" '
      'and num_documento_emp = :"empresa" and'
      'fec_ingreso_uni <= :"fechai" and '
      '(fec_egreso_uni >= :"fechaf" or fec_egreso_uni is null) and'
      'tip_documento_afi = tip_documento and '
      'num_documento_afi = num_documento')
    Left = 401
    Top = 191
    object qrylistapagosTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qrylistapagosNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qrylistapagosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qrylistapagosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qrylistapagosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qrylistapagosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qrylistapagosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrylistapagosFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qrylistapagosVAL_SUELDO_AFIL: TBCDField
      FieldName = 'VAL_SUELDO_AFIL'
      Precision = 18
      Size = 0
    end
    object qrylistapagosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
  end
end

object frmConsulta: TfrmConsulta
  Left = 60
  Top = 156
  ActiveControl = cbbancos
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Estado de las  Planillas'
  ClientHeight = 508
  ClientWidth = 749
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
    Width = 749
    Height = 171
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 229
      Top = 21
      Width = 353
      Height = 23
      Caption = 'Consulta  de  Movimientos Bancarios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 633
      Top = 10
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
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 747
      Height = 2
      Sections = <>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 116
      Width = 731
      Height = 49
      Caption = 'Informacion del Extracto Bancario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 34
        Top = 24
        Width = 62
        Height = 15
        Caption = 'Nombre Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 314
        Top = 22
        Width = 52
        Height = 15
        Caption = 'Fecha Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 482
        Top = 22
        Width = 45
        Height = 15
        Caption = 'fecha Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object cbbancos: TDBLookupComboBox
        Left = 111
        Top = 20
        Width = 196
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'cod_banco'
        ListField = 'nom_banco'
        ListSource = DataModule1.dtsbancos
        ParentFont = False
        TabOrder = 0
      end
      object dtfinicial: TDateTimePicker
        Left = 375
        Top = 19
        Width = 101
        Height = 21
        Date = 37270.649961111100000000
        Time = 37270.649961111100000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object dtffinal: TDateTimePicker
        Left = 535
        Top = 17
        Width = 89
        Height = 21
        Date = 37270.650053356500000000
        Time = 37270.650053356500000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 640
        Top = 13
        Width = 84
        Height = 31
        TabOrder = 3
        OnClick = BitBtn2Click
        Glyph.Data = {
          2E060000424D2E06000000000000360400002800000018000000150000000100
          080000000000F8010000C40E0000C40E00000001000000000000000000004000
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000006D6DFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000DBDBDBDBFFFF939393006D6DFFFFFFFFFFFF
          FFFFFF009393DBDBDBDBFFFF9393939393006DFFFFFFFFFFFFFFFF939393DBDB
          000000000093939393936D6DFFFFFFFFFFFF00930000FFFFFFFFFFFFFFFFFF00
          9393006D6DFFFFFFFFFF0093FFFFFF000000000000FFFFFF0093006D6DFFFFFF
          FFFF00FFFF0093939393939393939300FFFF006D6DFFFFFFFFFF00FF93939393
          9393939393FF936E00FF006D6DFFFFFFFFFF00FF93936E6E9393939393FF6E93
          00FF006D6DFFFFFFFFFF00FF00939393939393939393B693FFFF00FFFFFFFFFF
          FFFFFF00FFFF000093939393939300FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFF006DFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF00DB
          DB926DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFDB00006D6DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000006DFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF246D0000006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          002424000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24240000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 44
      Width = 727
      Height = 39
      Caption = 'Tipo de  Consulta'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todo El Extracto Bancario'
        'Extracto  Conciliar')
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 82
      Width = 729
      Height = 35
      TabOrder = 3
      object Label8: TLabel
        Left = 372
        Top = 12
        Width = 106
        Height = 13
        Caption = 'Tipo Movimiento   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 12
        Width = 112
        Height = 13
        Caption = 'Estado conciliaci'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbestconciliacion: TComboBox
        Left = 132
        Top = 8
        Width = 203
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Text = 'CONCI'
        Items.Strings = (
          'CONCI'
          'CONCIDIF'
          'CONCICH'
          'CONCING'
          'N')
      end
      object cbtipoconsignacion: TComboBox
        Left = 482
        Top = 10
        Width = 203
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'AUTOMATICO BANCOS'
        Items.Strings = (
          'AUTOMATICO BANCOS'
          'MANUAL'
          'TRANSFERENCIA ACH'
          'PLANILLA INTEGRADA'
          'NOTA CREDITO'
          'LICENCIA'
          'INCAPACIDAD'
          'S')
      end
    end
    object AllBanks: TCheckBox
      Left = 588
      Top = 60
      Width = 127
      Height = 17
      Caption = 'Todos los Bancos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 171
    Width = 749
    Height = 295
    Align = alClient
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 747
      Height = 293
      Align = alClient
      Caption = 'Listado del Informe'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 743
        Height = 276
        Align = alClient
        Color = clMoneyGreen
        DataSource = dsqconsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'GoudyOlSt BT'
        TitleFont.Style = [fsBold]
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 466
    Width = 749
    Height = 42
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 170
      Top = 4
      Width = 201
      Height = 33
      Caption = 'Exportar a Excel'
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
    end
    object btntexto: TBitBtn
      Left = 380
      Top = 4
      Width = 201
      Height = 33
      Caption = 'Exportar Archivo Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btntextoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000202020202020FFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF202020202020FFFFFF202000202000000000FFFFFFFFFFFF0000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF4040402020207F
        7F00808000000000404040404040404040000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFF4040400000007F7F00808000000000FFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF404040000000BF
        BF005F5F00000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFF404040FFFFFF0000007F7F00000000FFFFFFFFFFFFFFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000020202000000000
        0000000000000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF202020000000000000FFFFFFFFFFFF000000000000FFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000005F5F00808000
        8080002020FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000BFBF005F5F0040400060600000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00
        7F7F003F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000007F00007F000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00000000BF0000FF00005F000040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003F00007F00003F000060000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        000000007F00007F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dsqconsulta: TDataSource
    DataSet = qryConsulta
    Left = 206
    Top = 160
  end
  object qryConsulta: TADOQuery
    Connection = DataModule1.dtbdatamec
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from EST_BANCARIO_AUTO')
    Left = 170
    Top = 158
    object qryConsultaCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qryConsultaCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 8
    end
    object qryConsultaNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryConsultaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qryConsultaFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
    end
    object qryConsultaVAL_CONSIGNACION: TBCDField
      FieldName = 'VAL_CONSIGNACION'
      Precision = 18
      Size = 0
    end
    object qryConsultaTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
    end
    object qryConsultaEST_CONCILIACION: TStringField
      FieldName = 'EST_CONCILIACION'
      Size = 10
    end
    object qryConsultaFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
    end
    object qryConsultaFEC_RECEPCION: TDateTimeField
      FieldName = 'FEC_RECEPCION'
    end
    object qryConsultaMODIFICACION: TMemoField
      FieldName = 'MODIFICACION'
      BlobType = ftMemo
    end
    object qryConsultaEST_REGISTRO: TStringField
      FieldName = 'EST_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object qryConsultaFEC_MOD: TDateTimeField
      FieldName = 'FEC_MOD'
    end
    object qryConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object qryConsultaCOD_REGIONAL: TVariantField
      FieldName = 'COD_REGIONAL'
    end
  end
  object opguardar: TSaveDialog
    Left = 130
    Top = 158
  end
end

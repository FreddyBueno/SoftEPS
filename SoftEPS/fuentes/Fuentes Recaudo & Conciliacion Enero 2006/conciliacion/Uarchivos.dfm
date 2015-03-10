object frmarchivos: Tfrmarchivos
  Left = 147
  Top = 143
  Width = 746
  Height = 478
  Hint = 'Subir Extractos Bancarios'
  ActiveControl = dblbanco
  BorderIcons = [biSystemMenu, biHelp]
  Caption = 'Archivos  de  conciliacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 229
      Top = 33
      Width = 269
      Height = 23
      Caption = 'MOVIMIENTOS BANCARIOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 593
      Top = 8
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
    object Label5: TLabel
      Left = 314
      Top = 74
      Width = 107
      Height = 13
      Caption = 'Nombre del banco :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 20
      Top = 71
      Width = 49
      Height = 13
      Caption = 'Archivo :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 314
      Top = 94
      Width = 106
      Height = 13
      Caption = 'Tipo Movimiento   :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object dblbanco: TDBLookupComboBox
      Left = 424
      Top = 68
      Width = 265
      Height = 21
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'COD_BANCO'
      ListField = 'NOM_BANCO'
      ListSource = DataModule1.dtsbancos
      ParentFont = False
      TabOrder = 0
      OnExit = dblbancoExit
    end
    object edtnombrearchivo: TEdit
      Left = 76
      Top = 70
      Width = 209
      Height = 21
      Color = clActiveBorder
      Enabled = False
      TabOrder = 1
    end
    object cbtipoconsignacion: TComboBox
      Left = 424
      Top = 92
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
      TabOrder = 2
      Text = 'AUTOMATICO BANCOS'
      Visible = False
      Items.Strings = (
        'AUTOMATICO BANCOS'
        'MANUAL'
        'TRANSFERENCIA ACH'
        'PLANILLA INTEGRADA'
        'NOTA CREDITO'
        'S')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 738
    Height = 278
    Align = alClient
    TabOrder = 1
    object Label4: TLabel
      Left = 170
      Top = 142
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object sgdetalle: TStringGrid
      Left = 1
      Top = 16
      Width = 736
      Height = 227
      Color = clMoneyGreen
      ColCount = 1
      FixedCols = 0
      RowCount = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        106)
    end
    object GBvalidacion: TGroupBox
      Left = 214
      Top = 112
      Width = 349
      Height = 63
      Caption = 'Ejecutando Validaci'#243'n'
      TabOrder = 1
      Visible = False
      object Pbvalidar: TProgressBar
        Left = 16
        Top = 25
        Width = 315
        Height = 16
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 383
    Width = 738
    Height = 68
    Align = alBottom
    TabOrder = 2
    object Label6: TLabel
      Left = 345
      Top = 12
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
    object pbarchivo: TProgressBar
      Left = 16
      Top = 43
      Width = 703
      Height = 18
      TabOrder = 0
    end
    object btngrabar: TBitBtn
      Left = 591
      Top = 6
      Width = 101
      Height = 33
      Caption = 'Grabar Archivo'
      TabOrder = 1
      OnClick = btngrabarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F50505040404040404040404040404040
        40404040404040404040404040404040404040407F7F7FFFFFFFFFFFFF7F7F7F
        DFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0A0A0A07F7F7FFFFFFFFFFFFF7F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A0A0A07F7F7FFFFFFFFFFFFF7F7F7F
        DFDFDF9090906060606060603030300000000000000000006060606060606060
        60A0A0A07F7F7FFFFFFFFFFFFF7F7F7FDFDFDFC0C0C0C0C0C0C0C0C090909060
        6060606060606060C0C0C0C0C0C0C0C0C0A0A0A07F7F7FFFFFFFFFFFFF7F7F7F
        DFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0A0A0A07F7F7FFFFFFFFFFFFF7F7F7FEFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBFBFBF7F7F7FFFFFFFFFFFFFBFBFBF
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox1: TGroupBox
      Left = 110
      Top = 2
      Width = 219
      Height = 41
      Caption = 'Estadisticas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Registros: TLabel
        Left = 85
        Top = 14
        Width = 39
        Height = 15
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 207
        Top = 15
        Width = 48
        Height = 15
        Caption = 'Conciliados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 333
        Top = 15
        Width = 52
        Height = 15
        Caption = 'Sin Conciliar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edttotal: TEdit
        Left = 129
        Top = 12
        Width = 61
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object edtconcolidados: TEdit
        Left = 258
        Top = 12
        Width = 65
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
        Visible = False
      end
      object edtsinconsol: TEdit
        Left = 385
        Top = 12
        Width = 62
        Height = 21
        Color = clMoneyGreen
        TabOrder = 2
        Visible = False
      end
    end
  end
  object opabrir: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Archivos de Conciliacion *.*|*.*'
    InitialDir = 'c:'
    Left = 358
    Top = 166
  end
  object Query1: TADOQuery
    Connection = DataModule1.dtbdatamec
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DET_ESTRUCTURA_CAMPOS')
    Left = 322
    Top = 166
    object Query1CODCAMPO: TStringField
      FieldName = 'CODCAMPO'
      Size = 2
    end
    object Query1NOMCAMPO: TStringField
      FieldName = 'NOMCAMPO'
    end
    object Query1FORMATO: TStringField
      FieldName = 'FORMATO'
      Size = 10
    end
  end
end

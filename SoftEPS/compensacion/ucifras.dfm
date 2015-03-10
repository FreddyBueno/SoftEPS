object frmcifras: Tfrmcifras
  Left = 67
  Top = 103
  Width = 698
  Height = 396
  Caption = 'Generacion Cifras de Control Compensacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 369
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 688
      Height = 76
      Align = alTop
      TabOrder = 0
      object Label6: TLabel
        Left = 591
        Top = 12
        Width = 57
        Height = 16
        Caption = 'SOFTEPS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 234
        Top = 40
        Width = 204
        Height = 16
        Caption = 'Cifras de Control Compensaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 170
        Top = 56
        Width = 318
        Height = 9
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 285
      Width = 688
      Height = 83
      Align = alBottom
      TabOrder = 1
      object Label2: TLabel
        Left = 291
        Top = 4
        Width = 126
        Height = 13
        Caption = 'Fecha Fin Digitacion  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 4
        Top = 42
        Width = 60
        Height = 13
        Caption = 'Cotizantes'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 4
        Top = 4
        Width = 138
        Height = 13
        Caption = 'Mes / Ano Presentacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 72
        Top = 42
        Width = 74
        Height = 13
        Caption = 'Beneficiarios'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 154
        Top = 42
        Width = 66
        Height = 13
        Caption = 'Adicionales'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 238
        Top = 42
        Width = 52
        Height = 13
        Caption = 'Recaudo'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 338
        Top = 42
        Width = 60
        Height = 13
        Caption = 'Cotizaci'#243'n'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 149
        Top = 4
        Width = 140
        Height = 13
        Caption = 'Fecha Inicio Digitacion  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MaskEdit2: TMaskEdit
        Left = 5
        Top = 20
        Width = 61
        Height = 21
        Color = clMoneyGreen
        EditMask = '!99/\2\000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 7
        ParentFont = False
        TabOrder = 0
        Text = '  /20  '
      end
      object DateTimePicker2: TDateTimePicker
        Left = 148
        Top = 18
        Width = 97
        Height = 19
        CalAlignment = dtaLeft
        Date = 37294
        Time = 37294
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 292
        Top = 18
        Width = 97
        Height = 19
        CalAlignment = dtaLeft
        Date = 37257
        Time = 37257
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
      object Button1: TButton
        Left = 596
        Top = 12
        Width = 75
        Height = 25
        Caption = '&Procesar'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 4
        Top = 58
        Width = 61
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 4
      end
      object Edit2: TEdit
        Left = 72
        Top = 58
        Width = 61
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 5
      end
      object Edit3: TEdit
        Left = 154
        Top = 56
        Width = 61
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 6
      end
      object Edit4: TEdit
        Left = 238
        Top = 56
        Width = 99
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 7
      end
      object Edit5: TEdit
        Left = 340
        Top = 56
        Width = 95
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 8
      end
      object Button2: TButton
        Left = 552
        Top = 40
        Width = 121
        Height = 25
        Caption = 'Exportar a Excel...'
        TabOrder = 9
        OnClick = Button2Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 77
      Width = 688
      Height = 208
      Align = alClient
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 686
        Height = 206
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dmcompensa.qrymcpladet
    Left = 18
    Top = 32
  end
  object opguardar: TSaveDialog
    Left = 520
    Top = 24
  end
  object dsqconsulta: TDataSource
    DataSet = dmcompensa.qrymcpladet
    Left = 464
    Top = 24
  end
end

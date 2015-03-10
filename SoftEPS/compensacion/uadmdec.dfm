object frmadmindec: Tfrmadmindec
  Left = 136
  Top = 104
  Width = 605
  Height = 426
  Caption = 'Administraci'#243'n Declaracion de Giro y Compensaci'#243'n'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 83
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 120
      Top = 50
      Width = 352
      Height = 16
      Caption = 'Administracion Declaraciones de Giro Y Compensacion '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 423
      Top = 10
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
    object GroupBox2: TGroupBox
      Left = 52
      Top = 64
      Width = 469
      Height = 8
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 83
    Width = 597
    Height = 316
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 595
      Height = 70
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Declaracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 156
        Top = 16
        Width = 92
        Height = 13
        Caption = 'Num. Radicacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 356
        Top = 16
        Width = 97
        Height = 13
        Caption = 'Fecha Radicacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 50
        Width = 107
        Height = 13
        Caption = 'Estado Declaracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 284
        Top = 50
        Width = 74
        Height = 13
        Caption = 'Fecha Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 78
        Top = 8
        Width = 65
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
        Text = '0'
        OnExit = Edit1Exit
      end
      object Edit2: TEdit
        Left = 250
        Top = 8
        Width = 99
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
        OnExit = Edit2Exit
      end
      object DateTimePicker1: TDateTimePicker
        Left = 458
        Top = 8
        Width = 122
        Height = 21
        CalAlignment = dtaLeft
        Date = 37950
        Time = 37950
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
        OnExit = DateTimePicker1Exit
      end
      object DateTimePicker2: TDateTimePicker
        Left = 364
        Top = 42
        Width = 122
        Height = 21
        CalAlignment = dtaLeft
        Date = 37950
        Time = 37950
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 122
        Top = 42
        Width = 155
        Height = 21
        Color = clMoneyGreen
        KeyField = 'TIPO'
        ListField = 'TIPO'
        ListSource = DataSource1
        TabOrder = 3
        OnExit = DBLookupComboBox1Exit
      end
      object Button2: TButton
        Left = 508
        Top = 38
        Width = 75
        Height = 25
        Caption = '&Grabar'
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 71
      Width = 595
      Height = 213
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 17
        Width = 593
        Height = 195
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 593
        Height = 16
        Align = alTop
        Caption = 'Doble Click Actualizar'
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 284
      Width = 595
      Height = 31
      Align = alBottom
      TabOrder = 2
      object Button1: TButton
        Left = 492
        Top = 6
        Width = 97
        Height = 21
        Caption = 'Exportar a Excel'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dmcompensa.qrytipodec
    Left = 70
    Top = 30
  end
  object DataSource2: TDataSource
    DataSet = dmcompensa.qryestadosdec
    Left = 36
    Top = 40
  end
  object opguardar: TSaveDialog
    Left = 154
    Top = 12
  end
end

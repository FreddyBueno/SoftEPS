object frmcapita: Tfrmcapita
  Left = 272
  Top = 171
  Width = 399
  Height = 333
  Caption = 'Generacion de Archivos de Capitacion y Recapitacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 71
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 76
      Top = 38
      Width = 248
      Height = 16
      Caption = 'Archivos De Capitacion y Recapitacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 304
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
      Left = 94
      Top = 54
      Width = 219
      Height = 9
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 391
    Height = 235
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 148
      Height = 13
      Caption = 'Periodo de Compensacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 222
      Top = 6
      Width = 143
      Height = 13
      Caption = 'Directorio de Generaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 94
      Width = 88
      Height = 13
      Caption = 'Fecha de Corte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 160
      Top = 12
      Width = 55
      Height = 21
      Color = clMoneyGreen
      EditMask = '!99/0000;1;_'
      MaxLength = 7
      TabOrder = 0
      Text = '  /    '
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 182
      Width = 379
      Height = 41
      Caption = ' Porcentaje de Afiliados Procesados  Por IPs '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Gauge1: TGauge
        Left = 10
        Top = 16
        Width = 359
        Height = 15
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 222
      Top = 22
      Width = 165
      Height = 71
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 4
    end
    object DateTimePicker1: TDateTimePicker
      Left = 104
      Top = 84
      Width = 103
      Height = 21
      CalAlignment = dtaLeft
      Date = 37530
      Time = 37530
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 292
      Top = 108
      Width = 83
      Height = 25
      Caption = '&Generar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 42
      Width = 97
      Height = 17
      Caption = 'Capitacion'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
      OnExit = CheckBox1Exit
    end
    object CheckBox2: TCheckBox
      Left = 10
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Recapitacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox2Click
      OnExit = CheckBox2Exit
    end
    object GroupBox3: TGroupBox
      Left = 6
      Top = 140
      Width = 379
      Height = 39
      Caption = 'Porcentaje de IPSs Procesadas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object Gauge2: TGauge
        Left = 9
        Top = 15
        Width = 360
        Height = 14
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
    object Edit1: TEdit
      Left = 126
      Top = 108
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'Edit1'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 44
    Top = 52
  end
  object Table1: TTable
    DatabaseName = 'softeps'
    TableName = 'REGIONALES'
    Left = 12
    Top = 64
  end
end

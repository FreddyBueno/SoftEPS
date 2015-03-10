object frmcuf49: Tfrmcuf49
  Left = 264
  Top = 179
  Width = 427
  Height = 290
  Caption = 'Generacion Formato SNS-IE-49'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 79
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 38
      Top = 48
      Width = 341
      Height = 16
      Caption = 'Generacion Formato 49 Circular Unica Financiera SNS '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 331
      Top = 8
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
      Left = 60
      Top = 62
      Width = 303
      Height = 9
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 419
    Height = 184
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 188
      Top = 42
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
    object GroupBox1: TGroupBox
      Left = 4
      Top = 6
      Width = 181
      Height = 167
      Caption = 'GroupBox1'
      TabOrder = 0
      object DirectoryListBox1: TDirectoryListBox
        Left = 6
        Top = 16
        Width = 169
        Height = 145
        Color = clMoneyGreen
        ItemHeight = 16
        TabOrder = 0
      end
    end
    object DateTimePicker1: TDateTimePicker
      Left = 282
      Top = 32
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 37533
      Time = 37533
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 260
      Top = 68
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox3: TGroupBox
      Left = 190
      Top = 128
      Width = 223
      Height = 43
      Caption = ' Porcentaje Usuarios Procesados '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Gauge1: TGauge
        Left = 6
        Top = 18
        Width = 211
        Height = 15
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
  end
end

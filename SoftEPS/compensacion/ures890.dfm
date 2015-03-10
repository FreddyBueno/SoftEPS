object frm890: Tfrm890
  Left = 192
  Top = 136
  Width = 474
  Height = 391
  Caption = 'Generacion Archivos Resolucion 890 - 2002'
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
    Width = 466
    Height = 79
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 110
      Top = 40
      Width = 217
      Height = 16
      Caption = 'Archivos Resolucion 890 del 2002'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 340
      Top = 10
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 54
      Width = 393
      Height = 9
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 79
    Width = 466
    Height = 285
    Align = alClient
    TabOrder = 1
    object Label8: TLabel
      Left = 192
      Top = 4
      Width = 265
      Height = 13
      Caption = 'Directorio Destino de Generacion de Archivos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 120
      Width = 449
      Height = 127
      Caption = ' Estado del Proceso '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 20
        Width = 174
        Height = 13
        Caption = 'Archivo Maestro de Cotizantes'
      end
      object Label3: TLabel
        Left = 16
        Top = 54
        Width = 182
        Height = 13
        Caption = 'Archivos Maestro de Aportantes'
      end
      object Label4: TLabel
        Left = 16
        Top = 86
        Width = 179
        Height = 13
        Caption = 'Archivo Maestro de Novedades'
      end
      object Gauge1: TGauge
        Left = 16
        Top = 34
        Width = 419
        Height = 17
        BackColor = clMoneyGreen
        Progress = 0
      end
      object Gauge2: TGauge
        Left = 16
        Top = 68
        Width = 419
        Height = 17
        BackColor = clMoneyGreen
        Progress = 0
      end
      object Gauge3: TGauge
        Left = 16
        Top = 100
        Width = 419
        Height = 17
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
    object Button1: TButton
      Left = 332
      Top = 252
      Width = 121
      Height = 29
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 10
      Width = 183
      Height = 109
      Caption = ' Periodo de Generacion '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 12
        Top = 24
        Width = 33
        Height = 13
        Caption = 'DEL :'
      end
      object Label7: TLabel
        Left = 14
        Top = 50
        Width = 24
        Height = 13
        Caption = 'AL :'
      end
      object Label1: TLabel
        Left = 38
        Top = 68
        Width = 109
        Height = 13
        Caption = 'Fecha Generacion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateTimePicker2: TDateTimePicker
        Left = 66
        Top = 18
        Width = 105
        Height = 21
        CalAlignment = dtaLeft
        Date = 37526
        Time = 37526
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 0
      end
      object DateTimePicker3: TDateTimePicker
        Left = 66
        Top = 44
        Width = 105
        Height = 21
        CalAlignment = dtaLeft
        Date = 37526
        Time = 37526
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 1
        OnExit = DateTimePicker3Exit
      end
      object DateTimePicker1: TDateTimePicker
        Left = 38
        Top = 82
        Width = 111
        Height = 21
        CalAlignment = dtaLeft
        Date = 37525
        Time = 37525
        Color = clMoneyGreen
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 192
      Top = 22
      Width = 263
      Height = 95
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 3
    end
  end
end

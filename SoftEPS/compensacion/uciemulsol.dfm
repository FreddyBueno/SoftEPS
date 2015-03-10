object frmciemulsol: Tfrmciemulsol
  Left = 208
  Top = 217
  Width = 426
  Height = 197
  Caption = 'Cierre de Multiafiliados Solucionados'
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
    Width = 418
    Height = 111
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 72
      Top = 44
      Width = 278
      Height = 16
      Caption = 'Compensacion - Multiafiliados Solucionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 338
      Top = 6
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
    object Label1: TLabel
      Left = 10
      Top = 85
      Width = 122
      Height = 13
      Caption = 'Fecha Presentacion :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 58
      Width = 393
      Height = 9
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 134
      Top = 78
      Width = 99
      Height = 21
      CalAlignment = dtaLeft
      Date = 37589
      Time = 37589
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 300
      Top = 76
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 111
    Width = 418
    Height = 59
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 4
      Top = 6
      Width = 409
      Height = 43
      Caption = ' Multiafiliados Solucionados Compensados '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Gauge1: TGauge
        Left = 12
        Top = 20
        Width = 385
        Height = 14
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
  end
end

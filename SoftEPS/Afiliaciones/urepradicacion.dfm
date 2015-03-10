object frmrepradicado: Tfrmrepradicado
  Left = 257
  Top = 208
  Width = 429
  Height = 174
  Caption = 'Informe de Afiliados Radicados Por Fecha'
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
    Width = 421
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label26: TLabel
      Left = 96
      Top = 48
      Width = 224
      Height = 16
      Caption = 'AFILIADOS RADICADOS POR FECHA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 293
      Top = 6
      Width = 78
      Height = 19
      Caption = 'SOFTEPS '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 421
    Height = 65
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 86
      Top = 26
      Width = 104
      Height = 13
      Caption = 'Fecha Radicacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 198
      Top = 16
      Width = 119
      Height = 21
      Date = 37653.000000000000000000
      Time = 37653.000000000000000000
      Color = clMoneyGreen
      TabOrder = 0
    end
    object Button1: TButton
      Left = 328
      Top = 38
      Width = 75
      Height = 25
      Caption = '&Generar'
      Default = True
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end

object frmmulerr: Tfrmmulerr
  Left = 201
  Top = 172
  Width = 431
  Height = 181
  Caption = 'Cargue de Archivos de Multiafiliados - Fisalud'
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
    Top = 69
    Width = 423
    Height = 85
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 92
      Top = 18
      Width = 127
      Height = 13
      Caption = 'Afiliados Procesados :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 154
      Top = 42
      Width = 111
      Height = 27
      Caption = '&Cargar Archivo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 225
      Top = 12
      Width = 79
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 423
    Height = 69
    Align = alTop
    TabOrder = 1
    object Label13: TLabel
      Left = 101
      Top = 38
      Width = 201
      Height = 16
      Caption = 'Cargue Archivo Errores Fosyga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 346
      Top = 12
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
      Left = 88
      Top = 52
      Width = 247
      Height = 8
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Left = 480
    Top = 142
  end
end

object frmvalidacion: Tfrmvalidacion
  Left = 228
  Top = 173
  Width = 347
  Height = 190
  Caption = 'Validacion Autoliquidacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 76
    Width = 339
    Height = 87
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 132
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 76
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 50
      Top = 44
      Width = 244
      Height = 16
      Caption = 'Generacion Validaci'#242'n Autoliquidacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 258
      Top = 8
      Width = 53
      Height = 16
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 62
      Width = 317
      Height = 7
      TabOrder = 0
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Validacion.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Title = 'Archivo Validacion Autoliquidacion'
    Left = 16
    Top = 108
  end
end

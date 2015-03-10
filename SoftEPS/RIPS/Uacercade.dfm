object Acercade: TAcercade
  Left = 231
  Top = 128
  Width = 375
  Height = 254
  Caption = 'Acerca de'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 141
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 285
      Height = 20
      Caption = 'Software de Visualizacion de RIPS '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 30
      Width = 53
      Height = 13
      Caption = 'Version 1.0'
    end
    object Label3: TLabel
      Left = 6
      Top = 46
      Width = 128
      Height = 13
      Caption = 'Licenciado Temporalmente'
    end
    object Label4: TLabel
      Left = 6
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Copyright 2001'
    end
    object Label5: TLabel
      Left = 6
      Top = 82
      Width = 186
      Height = 13
      Caption = 'Proyecto SOFTEPS  Bogota (Colombia)'
    end
    object Label6: TLabel
      Left = 6
      Top = 100
      Width = 134
      Height = 13
      Caption = 'URL: http:/www.buego.com'
    end
    object Label7: TLabel
      Left = 6
      Top = 118
      Width = 143
      Height = 13
      Caption = 'EMAIL : fcocam@hotmail.com'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 144
    Width = 367
    Height = 83
    Align = alBottom
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 319
      Height = 13
      Caption = 
        'Informacion : Este producto esta protegido por leyes internacion' +
        'ales'
    end
    object Label9: TLabel
      Left = 8
      Top = 24
      Width = 264
      Height = 13
      Caption = 'Prohibida su venta o distribucion sin previa autorizacion.'
    end
    object Label10: TLabel
      Left = 8
      Top = 40
      Width = 177
      Height = 13
      Caption = 'Todos los derechos estan reservados'
    end
    object Label11: TLabel
      Left = 9
      Top = 57
      Width = 233
      Height = 13
      Caption = 'Desarrollado Por : Ing. Francisco Javier Camacho'
    end
    object Button1: TButton
      Left = 278
      Top = 46
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end

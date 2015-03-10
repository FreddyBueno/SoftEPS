object frmcorrecion: Tfrmcorrecion
  Left = 238
  Top = 193
  Width = 336
  Height = 239
  Caption = 'Generacion de Correciones'
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
    Width = 328
    Height = 77
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 73
      Top = 45
      Width = 173
      Height = 16
      Caption = 'Generacion de Correciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 261
      Top = 8
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
      Left = 55
      Top = 58
      Width = 227
      Height = 7
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 77
    Width = 328
    Height = 135
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 4
      Top = 6
      Width = 319
      Height = 71
      Caption = ' Datos Declaracion a Corregir '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 10
        Top = 20
        Width = 69
        Height = 13
        Caption = 'Declaracion'
      end
      object Label2: TLabel
        Left = 88
        Top = 20
        Width = 174
        Height = 13
        Caption = 'Numero de Radicacion Fisalud'
      end
      object Edit1: TEdit
        Left = 10
        Top = 36
        Width = 63
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 86
        Top = 36
        Width = 121
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
      object Button1: TButton
        Left = 234
        Top = 38
        Width = 75
        Height = 25
        Caption = '&Generar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 82
      Width = 317
      Height = 41
      Caption = 'Porcentaje Proceso de Correcion '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Gauge1: TGauge
        Left = 8
        Top = 16
        Width = 301
        Height = 16
        BackColor = clMoneyGreen
        Progress = 0
      end
    end
  end
end

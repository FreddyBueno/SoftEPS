object frmgenconxdpto: Tfrmgenconxdpto
  Left = 272
  Top = 174
  Width = 357
  Height = 180
  Caption = 'Generacion Consolidado Por Declaracion y Departamento'
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
    Width = 349
    Height = 64
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 15
      Width = 115
      Height = 13
      Caption = 'Declaracion Inicial :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 39
      Top = 45
      Width = 112
      Height = 13
      Caption = 'Declaracion Final : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 156
      Top = 9
      Width = 46
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 219
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Generar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 156
      Top = 39
      Width = 46
      Height = 21
      TabOrder = 1
      OnExit = Edit5Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 349
    Height = 89
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 135
      Top = 21
      Width = 119
      Height = 13
      Caption = 'Afiliados Procesados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 132
      Top = 39
      Width = 91
      Height = 21
      TabOrder = 0
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 291
    Top = 138
  end
end

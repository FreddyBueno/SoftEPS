object frmincapacidadesdescontadas: Tfrmincapacidadesdescontadas
  Left = 96
  Top = 109
  Width = 544
  Height = 398
  Caption = 'Incapacidades Descontadas por Autoliquidacion'
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
    Top = 274
    Width = 536
    Height = 97
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 388
      Top = 64
      Width = 119
      Height = 23
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 2
      Width = 527
      Height = 57
      Caption = 'Valores Descontados Por Autoliquidacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 56
        Top = 12
        Width = 81
        Height = 14
        Caption = 'No. Autorizacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 232
        Top = 14
        Width = 85
        Height = 14
        Caption = 'Valor Autorizados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 372
        Top = 12
        Width = 88
        Height = 14
        Caption = 'Valor Descontados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 14
        Top = 25
        Width = 149
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 192
        Top = 26
        Width = 153
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 364
        Top = 25
        Width = 119
        Height = 21
        Color = clMoneyGreen
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 274
    Align = alClient
    TabOrder = 1
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 534
      Height = 264
      Align = alClient
      Color = clMoneyGreen
      TabOrder = 0
    end
  end
end

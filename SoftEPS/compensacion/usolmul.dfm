object frmmulsol: Tfrmmulsol
  Left = 185
  Top = 184
  Width = 456
  Height = 200
  Caption = 'Registro de Multiafiliados Solucionados'
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
    Width = 448
    Height = 71
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 362
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
    object Label3: TLabel
      Left = 94
      Top = 41
      Width = 251
      Height = 16
      Caption = 'Registro de Multiafiliados Solucionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 110
      Top = 54
      Width = 227
      Height = 7
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 448
    Height = 102
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 10
      Width = 46
      Height = 13
      Caption = 'Tp_Doc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 74
      Top = 10
      Width = 112
      Height = 13
      Caption = 'Numero Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 202
      Top = 8
      Width = 116
      Height = 13
      Caption = 'Numero Declaracion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 346
      Top = 10
      Width = 80
      Height = 13
      Caption = 'Estado Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 18
      Top = 24
      Width = 49
      Height = 21
      Color = clMoneyGreen
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'CC'
      Items.Strings = (
        'CC'
        'CE'
        'TI'
        'RC'
        'NUI')
    end
    object Edit1: TEdit
      Left = 74
      Top = 24
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 204
      Top = 24
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 2
      OnExit = Edit2Exit
    end
    object Edit3: TEdit
      Left = 358
      Top = 24
      Width = 55
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 182
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Registrar '
      TabOrder = 4
      OnClick = Button1Click
    end
  end
end

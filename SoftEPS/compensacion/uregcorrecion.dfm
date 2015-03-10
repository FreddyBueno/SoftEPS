object frmregcorrecion: Tfrmregcorrecion
  Left = 116
  Top = 174
  Width = 639
  Height = 224
  Caption = 'Registro de Inconsistencias Para Correcion de Declaraciones'
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
    Width = 631
    Height = 71
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 232
      Top = 33
      Width = 179
      Height = 16
      Caption = 'Registro de Inconsistencias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 532
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
    object GroupBox2: TGroupBox
      Left = 214
      Top = 48
      Width = 227
      Height = 7
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 631
    Height = 126
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 629
      Height = 56
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 2
        Width = 46
        Height = 13
        Caption = 'Tp_Doc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 58
        Top = 2
        Width = 65
        Height = 13
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 172
        Top = 4
        Width = 69
        Height = 13
        Caption = 'Declaracion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 396
        Top = 18
        Width = 207
        Height = 19
        DataSource = DataSource1
        VisibleButtons = [nbEdit, nbPost, nbCancel]
        TabOrder = 4
      end
      object Edit1: TEdit
        Left = 54
        Top = 18
        Width = 109
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 4
        Top = 18
        Width = 41
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 170
        Top = 18
        Width = 65
        Height = 21
        Color = clMoneyGreen
        TabOrder = 2
      end
      object Button1: TButton
        Left = 280
        Top = 16
        Width = 75
        Height = 25
        Caption = '&Buscar'
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 57
      Width = 629
      Height = 68
      Align = alClient
      DataSource = DataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 450
    Top = 24
  end
end

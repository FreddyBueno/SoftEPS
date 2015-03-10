object Form3: TForm3
  Left = 135
  Top = 101
  Width = 812
  Height = 571
  Caption = 'Consulta de Recaudo en el Dia. '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 80
      Top = 48
      Width = 169
      Height = 41
      Caption = 'Generar Informe'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Panel5: TPanel
      Left = 264
      Top = 16
      Width = 249
      Height = 73
      TabOrder = 2
      object Label5: TLabel
        Left = 16
        Top = 12
        Width = 42
        Height = 13
        Caption = 'Usuario :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 44
        Width = 33
        Height = 13
        Caption = 'Clave :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit5: TEdit
        Left = 64
        Top = 40
        Width = 169
        Height = 21
        MaxLength = 10
        PasswordChar = '*'
        TabOrder = 1
      end
      object Edit6: TEdit
        Left = 64
        Top = 8
        Width = 169
        Height = 21
        MaxLength = 15
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 804
    Height = 415
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 802
      Height = 320
      Align = alTop
      TabOrder = 0
      object ListBox1: TListBox
        Left = 1
        Top = 1
        Width = 800
        Height = 318
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Terminal'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 321
      Width = 802
      Height = 93
      Align = alClient
      TabOrder = 1
    end
  end
end

object frmactestado: Tfrmactestado
  Left = 209
  Top = 230
  Width = 441
  Height = 189
  Caption = 'Actualizacion Estado Planillas'
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
    Width = 433
    Height = 162
    Align = alClient
    TabOrder = 0
    object Label13: TLabel
      Left = 68
      Top = 48
      Width = 289
      Height = 16
      Caption = 'Actualizacion Estados Planillas Compensadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 322
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
    object Button1: TButton
      Left = 167
      Top = 84
      Width = 75
      Height = 25
      Caption = '&Actualizar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 64
      Width = 393
      Height = 9
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 148
      Top = 116
      Width = 121
      Height = 21
      Color = clMoneyGreen
      TabOrder = 2
    end
  end
end

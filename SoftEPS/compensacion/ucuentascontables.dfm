object frmcuentas: Tfrmcuentas
  Left = 95
  Top = 128
  Width = 673
  Height = 216
  Caption = 'Generacion de Cuentas Contables Compensacion..'
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
    Top = 0
    Width = 665
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 127
      Top = 80
      Width = 177
      Height = 13
      Caption = 'Fecha Cierre de Compensacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 184
      Top = 36
      Width = 251
      Height = 16
      Caption = 'Generacion Contabilidad Compensacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 596
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
      Left = 449
      Top = 63
      Width = 75
      Height = 25
      Caption = '&Procesar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox3: TGroupBox
      Left = 116
      Top = 52
      Width = 421
      Height = 7
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 308
      Top = 72
      Width = 129
      Height = 21
      CalAlignment = dtaLeft
      Date = 37469
      Time = 37469
      Color = clMoneyGreen
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 665
    Height = 84
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 4
      Width = 641
      Height = 73
      Caption = ' Cuentas Contables '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 9
        Top = 18
        Width = 95
        Height = 13
        Caption = 'Cuenta Contable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 267
        Top = 18
        Width = 44
        Height = 13
        Caption = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 399
        Top = 18
        Width = 23
        Height = 13
        Caption = 'Cco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 456
        Top = 18
        Width = 43
        Height = 13
        Caption = 'Asiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 501
        Top = 18
        Width = 30
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 9
        Top = 33
        Width = 253
        Height = 21
        Color = clMoneyGreen
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 267
        Top = 33
        Width = 127
        Height = 21
        Color = clMoneyGreen
        TabOrder = 1
      end
      object Edit5: TEdit
        Left = 399
        Top = 33
        Width = 52
        Height = 21
        Color = clMoneyGreen
        TabOrder = 2
      end
      object Edit7: TEdit
        Left = 456
        Top = 33
        Width = 37
        Height = 21
        Color = clMoneyGreen
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 501
        Top = 33
        Width = 132
        Height = 21
        Color = clMoneyGreen
        TabOrder = 4
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'Archivos de Texto (*.txt)|*.txt'
    Title = 'Generacion Cuentas Contables Compensacion'
    Left = 473
    Top = 10
  end
end

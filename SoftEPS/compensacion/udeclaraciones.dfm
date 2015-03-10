object frmdeclaraciones: Tfrmdeclaraciones
  Left = 233
  Top = 183
  Width = 467
  Height = 179
  Caption = 'Declaraciones Compensacion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = dmcompensa.DataSource1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 459
    Height = 111
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 28
      Top = 8
      Width = 81
      Height = 13
      Caption = 'num_declaracion'
    end
    object Label3: TLabel
      Left = 28
      Top = 52
      Width = 102
      Height = 13
      Caption = 'periodo_compensado'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 308
      Top = 8
      Width = 88
      Height = 13
      Caption = 'fecha_declaracion'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 168
      Top = 8
      Width = 49
      Height = 13
      Caption = 'tipo_cierre'
    end
    object DBEdit3: TDBEdit
      Left = 28
      Top = 68
      Width = 134
      Height = 21
      DataField = 'periodo_compensado'
      DataSource = dsdeclaraciones
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 308
      Top = 24
      Width = 133
      Height = 21
      DataField = 'fecha_declaracion'
      DataSource = dsdeclaraciones
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 168
      Top = 24
      Width = 125
      Height = 21
      DataField = 'cot_tipo_decla'
      DataSource = dsdeclaraciones
      ItemHeight = 13
      Items.Strings = (
        '1 '
        '2 '
        '3 '
        '4'
        '5'
        '6')
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 28
      Top = 24
      Width = 121
      Height = 21
      DataField = 'num_declaracion'
      DataSource = dsdeclaraciones
      TabOrder = 0
    end
  end
  object dsdeclaraciones: TDataSource
    DataSet = dmcompensa.tbldeclaraciones
    Left = 260
    Top = 8
  end
end

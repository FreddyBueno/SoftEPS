object FRMINCAPACIDADES_PATERNIDAD: TFRMINCAPACIDADES_PATERNIDAD
  Left = 426
  Top = 314
  Width = 291
  Height = 95
  Caption = 'INCAPACIDADES PATERNIDAD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 102
    Height = 13
    Caption = 'Digite el Beneficiario?'
  end
  object EDTCODBEN: TEdit
    Left = 8
    Top = 32
    Width = 205
    Height = 21
    Color = clMoneyGreen
    TabOrder = 0
  end
  object Button1: TButton
    Left = 226
    Top = 6
    Width = 51
    Height = 29
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object qrygenero: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  AFILIADOS')
    Left = 228
    Top = 34
    object qrygeneroNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrygeneroCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
  end
end

object frminicio: Tfrminicio
  Left = 292
  Top = 184
  Width = 278
  Height = 198
  BorderIcons = [biSystemMenu]
  Caption = 'Conciliacion Bancaria '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF309191919191F1BF91911FF1BFFFBF918151
    BFFFF1FF1000FCFCBFFFF1B85100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF51EC
    C0000AAEB2205151F22AF8B2A077FCA02E002EF0AAB281917070077AB2A2A8B2
    B200B252F0B2A8A8F0A6E6F20AFC81B270000A3EB2B25151B27170702EA2810A
    F20070527070A8A870B20AAAC0C051F27000B2F0AAB28191EAB270B291FF81F0
    0A000A52200AF151F04420B207FFBCB22E0070F02052A191722CFCF000FF5120
    2E000A52A88CA191FFFCF22EF0FF51A88A000A52F1542111A660166EB2FF8120
    2E0070F051162CCCFEF2088020FFA8E89C511CF2D1B2C0002EE0002EBFFFF8A8
    C0FFF0FCFFF0C000000C00A4FFFFFFFFFFFFFFFFFFFFFFFF2EE0AEE1FFFFFFFF
    FFFFFFFFFFFFFFFF102E7CC1FFFFFFFFFFFFFFFFFFFFFFFF3EE07CD7FFFFFFFF
    FFFFFFFFFFFFFFFFE770FFF0FFFFFFFFFFFFFFFFFFFFFFFFA8D1FFF1FFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 22
    Top = 21
    Width = 224
    Height = 95
    Caption = 'Identificacion  del  Usuario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 30
      Width = 43
      Height = 13
      Caption = 'Usuario'
    end
    object Label2: TLabel
      Left = 34
      Top = 62
      Width = 31
      Height = 13
      Caption = 'Clave'
    end
    object edtusuario: TEdit
      Left = 75
      Top = 26
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'PRUEBA'
      OnExit = edtusuarioExit
      OnKeyPress = FormKeyPress
    end
    object edtpassword: TEdit
      Left = 75
      Top = 55
      Width = 110
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      Text = 'PRUEBA1'
      OnKeyPress = FormKeyPress
    end
  end
  object Cancelar: TBitBtn
    Left = 163
    Top = 133
    Width = 69
    Height = 24
    TabOrder = 2
    OnClick = CancelarClick
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 45
    Top = 132
    Width = 79
    Height = 24
    Caption = '&Aceptar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
end

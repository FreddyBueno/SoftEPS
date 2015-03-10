object Frmplanillas_sinanexos: TFrmplanillas_sinanexos
  Left = 162
  Top = 146
  Width = 727
  Height = 549
  Caption = 'Digitacion de Recaudo sin Anexos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 27
    Align = alTop
    TabOrder = 0
    object Edit18: TEdit
      Left = 22
      Top = 4
      Width = 31
      Height = 16
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clActiveBorder
      ReadOnly = True
      TabOrder = 0
    end
    object Edit19: TEdit
      Left = 58
      Top = 4
      Width = 98
      Height = 16
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clActiveBorder
      ReadOnly = True
      TabOrder = 1
    end
    object Edit21: TEdit
      Left = 163
      Top = 4
      Width = 349
      Height = 16
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clActiveBorder
      ReadOnly = True
      TabOrder = 2
    end
    object Edit22: TEdit
      Left = 518
      Top = 5
      Width = 107
      Height = 16
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clActiveBorder
      ReadOnly = True
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 719
    Height = 495
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 182
      Top = 21
      Width = 401
      Height = 23
      Caption = 'DIGITACION DEL  RECAUDO SIN ANEXOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 588
      Top = 4
      Width = 73
      Height = 19
      Caption = 'SOFTEPS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 42
      Top = 86
      Width = 79
      Height = 11
      Caption = 'Planilla Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label56: TLabel
      Left = 410
      Top = 86
      Width = 111
      Height = 11
      Caption = 'Confirmacion  Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 410
      Top = 108
      Width = 111
      Height = 11
      Caption = 'Correcc'#243'n de Planillas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = -190
      Top = 52
      Width = 878
      Height = 8
      TabOrder = 0
    end
    object BTNBORRARPLA: TBitBtn
      Left = 125
      Top = 395
      Width = 190
      Height = 39
      Caption = 'Borrar Planilla'
      TabOrder = 1
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000CE0E0000D80E00000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000809292929292
        92929292929292929292929292929292929200FC80FC800080FC00FFDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00FC80FC800080FC8080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9200FC80FC800080FC80FC00FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDB9200FC80FC800080FC80FC0080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDB9200000000800080FC80FC000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDB9200101010000080FC80FC00000080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDB92000000001010100080FC0000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDB9200FC80FC000010100000000000920080FFFFFFFFFF
        FFFFFFFFFFFFFFFFDB9200FC80FC80FC80001010000000DB920000FFFFFFFFFF
        FFFFFFFFFFFFFFDB9200FC80FC80FC80FC0000100000FFDB920080FFFFFFFFFF
        FFFFFFFFFFFFDB920000000080FC80FC80FC001000FFFFDB920000FFFFFFFFFF
        FFFFFFFFFFDB9200101010000080FC80FC800000FFFFFFDB920080FFFFFFFFFF
        FFFFFFFFDB92000000001010100080FC80FC00FFFFFFFFDB920000FFFFFFFFFF
        FFFFFFDB9200DBE3DB00001010000080FC00FFFFFFFFFFDB920080FFFFFFFFFF
        FFFFDB9200DBE3DBE3DBE300101000FC00FFFFFFFFFFFFDB920000FFFFFFFFFF
        FFDB920000000000DBE3DB0000100000FFFFFFFFFFFFFFDB920080FFFFFFFFFF
        FFDB9200E3FFE3FF00DBE3DB001000FFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
        DB9200E3FFE3FFE300E3DBE30000FFFFFFFFFFFFFFFFFFDB920080FFFFFFFFFF
        DB9200FFE3FFE3FF0000E3DB00FFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
        DB9200E3FFE3FFE3FF00DB00FFFFFFFFFFFFFFFFFFFFFFDB920080FFFFFFFFFF
        FF9200FFE3FFE3FFE30000FFFFFFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
        FFFF9200FFE3FFE3FF00FFFFFFFFFFFF000000FFFFFFFFDB920080FF00FFFFFF
        FFFFFF00E3FFE3FF00FFFFFFFFFFFFFF00FF00FFFFFFFFDB920000FF0000FFFF
        FFFFFFFF00000000FFFF00000000FFFF00FFFF0000FFFFDB920080FF00FF92FF
        FFFFFFFF92FF92FFFFFF00FFFF0000FF00FFFFFFFF0000DB920000FF00FFFF92
        DBFFFFFF92FFFF92FFFF0000FFFFFF0000FFFFFFFFFFFFDB920080FF00FFFFFF
        FFFFFFFFFFDBFFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFDB92000000FF00FFFF
        FFFFFFFFFFDBFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFDB920080000000FFFF
        FFDBDBFFFF92FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
        FFFFDBFFDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9200800080008000
        8000800080008000800080008000800080008000800080008000}
      Style = bsNew
    end
    object nuevaplanilla: TBitBtn
      Left = 471
      Top = 396
      Width = 166
      Height = 38
      Caption = 'Nueva Planilla'
      ModalResult = 3
      TabOrder = 2
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        0000000000000000000000000000000000000000000000FFFFFFFFFF00000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF92
        929292929292929292929292929292929292929292FFFFFFFFFFFFFFFFFFFF00
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF00
        FF00FF00FF00FF000000000000000000000000FF00FFFFFFFFFFFFFFFFFFFF00
        FF00FF00FF00FF000000000000000000000000FF00FFFFFFFFFFFFFFFFFFFF00
        FF00FF00FF00FF000000000000000000000000FF00FFFFFFFFFFFFFFFFFFFF00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF00
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9292929292929292929292929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF030303039203929203FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF92929203920392920300FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF929292039203920392FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF03030303920303929200FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF039292929203920392FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF03929292920392920300FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF030303039203929203FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000009292929292929292920000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF929292929292929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF92929292808080808092929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF929292929292FCFCFCFCFCFCFC929292929292FFFFFFFFFFFFFFFFFFFFFF92
        92929292FFFF92FCFCFCFCFCFCFC92FFFF9292929292FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF92FCFCFCFCFCFCFC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF92FCFCFCFCFC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF92FCFCFCFCFC92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF92929292929292FFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox4: TGroupBox
      Left = 11
      Top = 120
      Width = 688
      Height = 365
      Caption = 'DATOS GENERALES DEL APORTANTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label37: TLabel
        Left = 12
        Top = 27
        Width = 80
        Height = 11
        Caption = 'Tipo Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 111
        Top = 30
        Width = 111
        Height = 11
        Caption = 'Numero de documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 345
        Top = 29
        Width = 116
        Height = 11
        Caption = 'Nombre  o Razon Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 63
        Top = 68
        Width = 86
        Height = 11
        Caption = 'Tipo  Declaracion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbfechapago: TLabel
        Left = 301
        Top = 68
        Width = 57
        Height = 11
        Caption = 'Fecha Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 433
        Top = 68
        Width = 108
        Height = 11
        Caption = 'Periodo de Cotizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 559
        Top = 68
        Width = 107
        Height = 11
        Caption = 'Periodo Presentacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 92
        Top = 105
        Width = 96
        Height = 11
        Caption = 'Clase de Aportante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 390
        Top = 106
        Width = 64
        Height = 11
        Caption = 'Ultimo Digito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 552
        Top = 103
        Width = 79
        Height = 11
        Caption = 'Ultimo Dia Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 58
        Top = 145
        Width = 151
        Height = 11
        Caption = 'Direccion de  Correspondencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 336
        Top = 143
        Width = 71
        Height = 11
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 516
        Top = 143
        Width = 93
        Height = 11
        Caption = 'Ciudad o Municipio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbtipodocempresa: TComboBox
        Left = 15
        Top = 42
        Width = 67
        Height = 21
        Hint = 'Tipo de Docuemnto del Aportante'
        Style = csDropDownList
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        OnChange = cbtipodocempresaChange
        Items.Strings = (
          'CC'
          'NIT'
          'CE'
          'TI'
          'PS')
      end
      object ednumero: TEdit
        Left = 103
        Top = 42
        Width = 126
        Height = 21
        Hint = 'Numero de Documento del Aportante'
        BevelInner = bvSpace
        BevelKind = bkTile
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        OnChange = ednumeroChange
        OnEnter = ednumeroEnter
        OnExit = ednumeroExit
        OnKeyPress = edtplanillaKeyPress
      end
      object Button3: TButton
        Left = 234
        Top = 43
        Width = 30
        Height = 20
        Hint = 'Listado de las  empresas'
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = Button3Click
      end
      object edtnombreempresa: TEdit
        Left = 272
        Top = 42
        Width = 383
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkTile
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edtperiodo: TMaskEdit
        Left = 455
        Top = 82
        Width = 64
        Height = 21
        Hint = 
          'Escriba el a'#241'o y el mes al que corresponde a la  autoliquidaci'#243'n' +
          ' de aportes que se est'#225' presentando. El per'#237'odo a cotizar corres' +
          'ponde al mismo mes en que se realiza el pago. Recuerde que cance' +
          'la las cotizaciones mes anticipado. El ingreso base de cotizaci'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        EditMask = '!99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 7
        ParentFont = False
        TabOrder = 3
        Text = '  /    '
        OnExit = edtperiodoExit
      end
      object msperpresentacion: TMaskEdit
        Left = 597
        Top = 82
        Width = 60
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        EditMask = '!99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 7
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '  /    '
      end
      object cbtipoaportante: TComboBox
        Left = 15
        Top = 119
        Width = 290
        Height = 21
        Style = csDropDownList
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 5
        Items.Strings = (
          'Grandes  Aportantes'
          'Peque'#241'os Aportantes')
      end
      object edtdigito: TEdit
        Left = 389
        Top = 119
        Width = 84
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edtplanillaKeyPress
      end
      object edtultimafechapago: TEdit
        Left = 529
        Top = 119
        Width = 126
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object Edit23: TEdit
        Left = 15
        Top = 158
        Width = 275
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 294
        Top = 158
        Width = 194
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_DEPARTAMENTO'
        ListField = 'NOM_DEPARTAMENTO'
        ListSource = DataModule1.dtsdepartamentos
        ParentFont = False
        TabOrder = 10
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 490
        Top = 158
        Width = 165
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_CIUDAD'
        ListField = 'NOM_CIUDAD'
        ListSource = DataModule1.dtsciudades
        ParentFont = False
        TabOrder = 11
      end
      object dtfechapago: TMaskEdit
        Left = 290
        Top = 82
        Width = 81
        Height = 21
        Hint = 
          'Escriba el a'#241'o y el mes al que corresponde a la  autoliquidaci'#243'n' +
          ' de aportes que se est'#225' presentando. El per'#237'odo a cotizar corres' +
          'ponde al mismo mes en que se realiza el pago. Recuerde que cance' +
          'la las cotizaciones mes anticipado. El ingreso base de cotizaci'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        EditMask = '!99/99/00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 12
        Text = '  /  /  '
      end
      object cbtipodeclaracion: TEdit
        Left = 15
        Top = 82
        Width = 234
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object GroupBox5: TGroupBox
        Left = 14
        Top = 196
        Width = 515
        Height = 151
        Caption = 'PAGO DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object Label7: TLabel
          Left = 47
          Top = 12
          Width = 33
          Height = 14
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 41
          Top = 56
          Width = 86
          Height = 14
          Caption = 'Numero Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 209
          Top = 12
          Width = 75
          Height = 14
          Caption = 'Valor Efectivo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 374
          Top = 11
          Width = 75
          Height = 14
          Caption = 'Valor Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 27
          Top = 96
          Width = 96
          Height = 14
          Caption = 'Total Consignado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbbanco: TDBLookupComboBox
          Left = 15
          Top = 30
          Width = 144
          Height = 21
          Color = clMoneyGreen
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'COD_BANCO'
          ListField = 'NOM_BANCO'
          ListFieldIndex = 1
          ListSource = DataModule1.dtsbancos
          NullValueKey = 123
          ParentFont = False
          TabOrder = 0
          OnClick = cbbancoClick
        end
        object edtcuenta: TEdit
          Left = 15
          Top = 74
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtvalefectivo: TEdit
          Left = 169
          Top = 30
          Width = 133
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = edtvalefectivoExit
        end
        object edtvalcheque: TEdit
          Left = 350
          Top = 29
          Width = 139
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = edtvalchequeExit
        end
        object edttotalconsignado: TEdit
          Left = 16
          Top = 116
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object sgdetabanco: TStringGrid
          Left = 160
          Top = 56
          Width = 344
          Height = 85
          Hint = 'Escriba  el codigo del banco nuero de  cuenta'
          Color = clMoneyGreen
          ColCount = 3
          FixedCols = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
          ParentFont = False
          TabOrder = 5
          ColWidths = (
            56
            136
            124)
        end
      end
      object btngrabarplanilla: TBitBtn
        Left = 550
        Top = 206
        Width = 120
        Height = 33
        Caption = '&Grabar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = btngrabarplanillaClick
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
      object BitBtn1: TBitBtn
        Left = 549
        Top = 257
        Width = 120
        Height = 39
        Caption = 'Planilla Nueva'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        OnClick = BitBtn1Click
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000CE0E0000D80E00000001000000000000000000004000
          000080000000FF000000002000004020000080200000FF200000004000004040
          000080400000FF400000006000004060000080600000FF600000008000004080
          000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
          000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
          200080002000FF002000002020004020200080202000FF202000004020004040
          200080402000FF402000006020004060200080602000FF602000008020004080
          200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
          200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
          400080004000FF004000002040004020400080204000FF204000004040004040
          400080404000FF404000006040004060400080604000FF604000008040004080
          400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
          400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
          600080006000FF006000002060004020600080206000FF206000004060004040
          600080406000FF406000006060004060600080606000FF606000008060004080
          600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
          600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
          800080008000FF008000002080004020800080208000FF208000004080004040
          800080408000FF408000006080004060800080608000FF608000008080004080
          800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
          800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
          A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
          A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
          A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
          A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
          C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
          C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
          C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
          C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
          FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
          FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
          FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
          FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000809292929292
          92929292929292929292929292929292929200FC80FC800080FC00FFDBDBDBDB
          DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB00FC80FC800080FC8080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9200FC80FC800080FC80FC00FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDB9200FC80FC800080FC80FC0080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFDB9200000000800080FC80FC000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDB9200101010000080FC80FC00000080FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDB92000000001010100080FC0000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDB9200FC80FC000010100000000000920080FFFFFFFFFF
          FFFFFFFFFFFFFFFFDB9200FC80FC80FC80001010000000DB920000FFFFFFFFFF
          FFFFFFFFFFFFFFDB9200FC80FC80FC80FC0000100000FFDB920080FFFFFFFFFF
          FFFFFFFFFFFFDB920000000080FC80FC80FC001000FFFFDB920000FFFFFFFFFF
          FFFFFFFFFFDB9200101010000080FC80FC800000FFFFFFDB920080FFFFFFFFFF
          FFFFFFFFDB92000000001010100080FC80FC00FFFFFFFFDB920000FFFFFFFFFF
          FFFFFFDB9200DBE3DB00001010000080FC00FFFFFFFFFFDB920080FFFFFFFFFF
          FFFFDB9200DBE3DBE3DBE300101000FC00FFFFFFFFFFFFDB920000FFFFFFFFFF
          FFDB920000000000DBE3DB0000100000FFFFFFFFFFFFFFDB920080FFFFFFFFFF
          FFDB9200E3FFE3FF00DBE3DB001000FFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
          DB9200E3FFE3FFE300E3DBE30000FFFFFFFFFFFFFFFFFFDB920080FFFFFFFFFF
          DB9200FFE3FFE3FF0000E3DB00FFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
          DB9200E3FFE3FFE3FF00DB00FFFFFFFFFFFFFFFFFFFFFFDB920080FFFFFFFFFF
          FF9200FFE3FFE3FFE30000FFFFFFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
          FFFF9200FFE3FFE3FF00FFFFFFFFFFFF000000FFFFFFFFDB920080FF00FFFFFF
          FFFFFF00E3FFE3FF00FFFFFFFFFFFFFF00FF00FFFFFFFFDB920000FF0000FFFF
          FFFFFFFF00000000FFFF00000000FFFF00FFFF0000FFFFDB920080FF00FF92FF
          FFFFFFFF92FF92FFFFFF00FFFF0000FF00FFFFFFFF0000DB920000FF00FFFF92
          DBFFFFFF92FFFF92FFFF0000FFFFFF0000FFFFFFFFFFFFDB920080FF00FFFFFF
          FFFFFFFFFFDBFFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFDB92000000FF00FFFF
          FFFFFFFFFFDBFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFDB920080000000FFFF
          FFDBDBFFFF92FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFDB920000FFFFFFFFFF
          FFFFDBFFDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9200800080008000
          8000800080008000800080008000800080008000800080008000}
        Style = bsNew
      end
      object correccion: TGroupBox
        Left = 14
        Top = 62
        Width = 655
        Height = 49
        TabOrder = 17
        object Label53: TLabel
          Left = 2
          Top = 8
          Width = 114
          Height = 11
          Caption = 'No. Planilla  a Corregir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 164
          Top = 8
          Width = 57
          Height = 11
          Caption = 'Fecha Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 286
          Top = 8
          Width = 57
          Height = 11
          Caption = 'Fecha Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 383
          Top = 8
          Width = 103
          Height = 11
          Caption = 'Periodo compensado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 530
          Top = 8
          Width = 107
          Height = 11
          Caption = 'Periodo Presentacion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EDTNPLACORRECION: TEdit
          Left = 0
          Top = 21
          Width = 98
          Height = 24
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = EDTNPLACORRECIONExit
        end
        object dtpfechapago: TDateTimePicker
          Left = 138
          Top = 22
          Width = 110
          Height = 21
          Date = 37214.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 37214.000000000000000000
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = dtpfechapagoExit
        end
        object dtfechapagoc: TEdit
          Left = 274
          Top = 22
          Width = 95
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object msperpresentacionc: TMaskEdit
          Left = 569
          Top = 22
          Width = 63
          Height = 21
          Hint = 
            'Escriba el a'#241'o y el mes al que corresponde a la  autoliquidaci'#243'n' +
            ' de aportes que se est'#225' presentando. El per'#237'odo a cotizar corres' +
            'ponde al mismo mes en que se realiza el pago. Recuerde que cance' +
            'la las cotizaciones mes anticipado. El ingreso base de cotizaci'
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          EditMask = '!99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 3
          Text = '  /    '
          OnExit = edtperiodoExit
        end
        object edtperiodocomp: TMaskEdit
          Left = 405
          Top = 22
          Width = 60
          Height = 21
          Color = clActiveBorder
          Enabled = False
          EditMask = '!99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 7
          ParentFont = False
          TabOrder = 4
          Text = '  /    '
        end
      end
    end
    object edtplanilla: TEdit
      Left = 131
      Top = 84
      Width = 114
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnChange = edtplanillaChange
      OnEnter = edtplanillaEnter
      OnExit = edtplanillaExit
      OnKeyPress = edtplanillaKeyPress
    end
    object Edit1: TEdit
      Left = 539
      Top = 84
      Width = 114
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = Edit1Exit
      OnKeyPress = edtplanillaKeyPress
    end
    object chkcorreccion: TCheckBox
      Left = 538
      Top = 110
      Width = 25
      Height = 11
      TabOrder = 6
      Visible = False
      OnExit = chkcorreccionExit
    end
  end
  object qrymovbancario: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NUM_PLANILLA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM EST_BANCARIO_AUTO WHERE NUM_PLANILLA= :NUM_PLANILL' +
        'A')
    Top = 29
    object qrymovbancarioCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qrymovbancarioCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 8
    end
    object qrymovbancarioNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrymovbancarioNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrymovbancarioFEC_RECAUDO: TDateTimeField
      FieldName = 'FEC_RECAUDO'
    end
    object qrymovbancarioVAL_CONSIGNACION: TBCDField
      FieldName = 'VAL_CONSIGNACION'
      Precision = 18
      Size = 0
    end
    object qrymovbancarioTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
      Size = 5
    end
    object qrymovbancarioEST_CONCILIACION: TStringField
      FieldName = 'EST_CONCILIACION'
      Size = 1
    end
    object qrymovbancarioFEC_PLANILLA_CON: TDateTimeField
      FieldName = 'FEC_PLANILLA_CON'
    end
    object qrymovbancarioFEC_RECEPCION: TDateTimeField
      FieldName = 'FEC_RECEPCION'
    end
  end
  object qryempresas: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TIP_DOCUMENTO '
      'FROM EMPRESAS '
      'WHERE NUM_DOCUMENTO=  :DOC')
    Left = 30
    Top = 30
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
  end
end

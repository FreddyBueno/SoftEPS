object frmcorreciones: Tfrmcorreciones
  Left = 251
  Top = 164
  Width = 761
  Height = 492
  ActiveControl = sgdetalle
  BorderIcons = [biSystemMenu]
  Caption = 
    'Correcion  de Planilla  Recaudo de Aportes al Sistema General de' +
    ' Seguridad Social en Salud.'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pcencabezado: TPageControl
    Left = 0
    Top = 35
    Width = 753
    Height = 430
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Encabezado Planilla '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      OnEnter = TabSheet1Enter
      object Label3: TLabel
        Left = 166
        Top = 29
        Width = 418
        Height = 23
        Caption = 'DIGITACION DE  CORRECIONES  RECAUDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 605
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
        Left = 473
        Top = 80
        Width = 85
        Height = 14
        Caption = 'Planilla Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = -87
        Top = 56
        Width = 878
        Height = 8
        TabOrder = 0
      end
      object BTNBORRARPLA: TBitBtn
        Left = 134
        Top = 316
        Width = 190
        Height = 39
        Caption = 'Borrar Planilla'
        TabOrder = 3
        OnClick = BTNBORRARPLAClick
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
        Left = 507
        Top = 321
        Width = 166
        Height = 38
        Caption = 'Nueva Planilla'
        ModalResult = 3
        TabOrder = 4
        OnClick = nuevaplanillaClick
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
        Left = 26
        Top = 101
        Width = 685
        Height = 203
        Caption = 'DATOS GENERALES DEL APORTANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label37: TLabel
          Left = 14
          Top = 23
          Width = 90
          Height = 14
          Caption = 'Tipo Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 111
          Top = 23
          Width = 127
          Height = 14
          Caption = 'Numero de documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 345
          Top = 23
          Width = 128
          Height = 14
          Caption = 'Nombre  o Razon Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbfechapago: TLabel
          Left = 176
          Top = 66
          Width = 62
          Height = 14
          Caption = 'Fecha Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 422
          Top = 66
          Width = 118
          Height = 14
          Caption = 'Periodo compensado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 544
          Top = 66
          Width = 119
          Height = 14
          Caption = 'Periodo Presentacion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 92
          Top = 107
          Width = 106
          Height = 14
          Caption = 'Clase de Aportante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 390
          Top = 106
          Width = 69
          Height = 14
          Caption = 'Ultimo Digito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 552
          Top = 105
          Width = 84
          Height = 14
          Caption = 'Ultimo Dia Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 58
          Top = 145
          Width = 170
          Height = 14
          Caption = 'Direccion de  Correspondencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 330
          Top = 143
          Width = 78
          Height = 14
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 516
          Top = 143
          Width = 104
          Height = 14
          Caption = 'Ciudad o Municipio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 12
          Top = 66
          Width = 120
          Height = 14
          Caption = 'No. Planilla  a Corregir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 320
          Top = 66
          Width = 62
          Height = 14
          Caption = 'Fecha Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbtipodocempresa: TComboBox
          Left = 16
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
          Left = 105
          Top = 42
          Width = 124
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
          OnExit = ednumeroExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object Button3: TButton
          Left = 230
          Top = 42
          Width = 23
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
          TabOrder = 10
          OnClick = Button3Click
        end
        object edtnombreempresa: TEdit
          Left = 273
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
          TabOrder = 11
        end
        object cbtipodeclaracion: TComboBox
          Left = 17
          Top = 178
          Width = 32
          Height = 21
          Hint = 'Tipo de Aporte Realizado por el Aportante'
          Style = csDropDownList
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          MaxLength = 1
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnExit = cbtipodeclaracionExit
          Items.Strings = (
            'CORRECION')
        end
        object dtfechapago: TDateTimePicker
          Left = 156
          Top = 84
          Width = 111
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
          TabOrder = 3
          OnExit = dtfechapagoExit
        end
        object edtperiodo: TMaskEdit
          Left = 442
          Top = 84
          Width = 64
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
          TabOrder = 5
          Text = '  /    '
          OnExit = edtperiodoExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object msperpresentacion: TMaskEdit
          Left = 570
          Top = 84
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
          TabOrder = 6
          Text = '  /    '
          OnExit = msperpresentacionExit
        end
        object cbtipoaportante: TComboBox
          Left = 16
          Top = 120
          Width = 290
          Height = 21
          Style = csDropDownList
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 7
          Items.Strings = (
            'Grandes  Aportantes'
            'Peque'#241'os Aportantes')
        end
        object edtdigito: TEdit
          Left = 389
          Top = 120
          Width = 84
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object edtultimafechapago: TEdit
          Left = 530
          Top = 120
          Width = 126
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object Edit23: TEdit
          Left = 16
          Top = 157
          Width = 275
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 292
          Top = 157
          Width = 194
          Height = 21
          Color = clActiveBorder
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
          TabOrder = 13
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 491
          Top = 157
          Width = 165
          Height = 21
          Color = clActiveBorder
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
          TabOrder = 14
        end
        object Edit1: TEdit
          Left = 306
          Top = 84
          Width = 96
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object EDTNPLACORRECION: TEdit
          Left = 16
          Top = 84
          Width = 99
          Height = 24
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = EDTNPLACORRECIONExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
      end
      object edtplanilla: TEdit
        Left = 567
        Top = 80
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
        TabOrder = 1
        OnChange = edtplanillaChange
        OnEnter = edtplanillaEnter
        OnExit = EDTPLANILLAEXIT
        OnKeyPress = edtplanillaKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle planilla '
      OnEnter = TabSheet2Enter
      object Panel1: TPanel
        Left = 0
        Top = 22
        Width = 745
        Height = 188
        Align = alClient
        TabOrder = 0
        object sgdetalle: TStringGrid
          Left = 1
          Top = 1
          Width = 743
          Height = 186
          Align = alClient
          Color = clMoneyGreen
          ColCount = 24
          FixedCols = 0
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentFont = False
          TabOrder = 0
          OnDblClick = sgdetalleDblClick
          ColWidths = (
            26
            96
            25
            26
            27
            23
            24
            25
            24
            23
            25
            26
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64
            64)
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 210
        Width = 745
        Height = 192
        Align = alBottom
        TabOrder = 1
        object Agregar: TButton
          Left = 626
          Top = 137
          Width = 106
          Height = 20
          Caption = 'Agregar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ModalResult = 1
          ParentFont = False
          TabOrder = 5
          OnClick = AgregarClick
          OnEnter = AgregarEnter
        end
        object Button1: TButton
          Left = 627
          Top = 163
          Width = 104
          Height = 19
          Caption = 'Borrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 6
          OnClick = Button1Click
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 1
          Width = 727
          Height = 49
          Caption = 'Identificaciondel Afiliado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label38: TLabel
            Left = 33
            Top = 11
            Width = 24
            Height = 14
            Caption = 'Tipo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 136
            Top = 11
            Width = 44
            Height = 14
            Caption = 'Numero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 338
            Top = 11
            Width = 112
            Height = 14
            Caption = 'Nombre  del usuario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 606
            Top = 10
            Width = 96
            Height = 14
            Caption = 'Tipo de Cotizante'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbtipodocafiliado: TComboBox
            Left = 25
            Top = 24
            Width = 52
            Height = 21
            Style = csDropDownList
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            Items.Strings = (
              'CC'
              'CE'
              'TI')
          end
          object edtnumeroducafiliado: TEdit
            Left = 101
            Top = 23
            Width = 108
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkTile
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 15
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = edtnumeroducafiliadoExit
            OnKeyPress = edtnumeroducafiliadoKeyPress
          end
          object Button4: TButton
            Left = 216
            Top = 24
            Width = 22
            Height = 20
            Hint = 'Listado de los usuarios  activos  de la  empresa'
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Button4Click
          end
          object edtnombreafiliado: TEdit
            Left = 239
            Top = 23
            Width = 352
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkTile
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object cbtipocotizante: TComboBox
            Left = 599
            Top = 23
            Width = 101
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
            TabOrder = 4
            Items.Strings = (
              'Dependiente'
              'Independiente'
              'Pensionado'
              'Empleado(a) Domestica '
              'Madre Comunitaria')
          end
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 49
          Width = 727
          Height = 36
          Caption = 'Novedades Reportadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object cking: TCheckBox
            Left = 57
            Top = 18
            Width = 52
            Height = 13
            Caption = 'ING'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = ckingClick
          end
          object ckret: TCheckBox
            Left = 123
            Top = 18
            Width = 56
            Height = 13
            Caption = 'RET'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = ckretClick
          end
          object cktda: TCheckBox
            Left = 196
            Top = 18
            Width = 65
            Height = 13
            Caption = 'TDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = cktdaClick
          end
          object cktaa: TCheckBox
            Left = 259
            Top = 17
            Width = 58
            Height = 14
            Caption = 'TAA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = cktaaClick
          end
          object ckvsp: TCheckBox
            Left = 323
            Top = 18
            Width = 60
            Height = 13
            Caption = 'VSP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object ckvst: TCheckBox
            Left = 378
            Top = 16
            Width = 51
            Height = 15
            Caption = 'VST'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object cksln: TCheckBox
            Left = 439
            Top = 16
            Width = 51
            Height = 15
            Caption = 'SLN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object ckige: TCheckBox
            Left = 500
            Top = 17
            Width = 48
            Height = 14
            Caption = 'IGE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object cklma: TCheckBox
            Left = 554
            Top = 14
            Width = 57
            Height = 17
            Caption = 'LMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object ckvac: TCheckBox
            Left = 613
            Top = 14
            Width = 68
            Height = 17
            Caption = 'VAC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
        end
        object GroupBox7: TGroupBox
          Left = 7
          Top = 84
          Width = 728
          Height = 50
          Caption = 'Detalle  de los Valorer  Cotizados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label26: TLabel
            Left = 39
            Top = 12
            Width = 23
            Height = 14
            Caption = 'Dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 128
            Top = 12
            Width = 76
            Height = 14
            Caption = 'Salario Basico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 234
            Top = 12
            Width = 124
            Height = 14
            Caption = 'Valor Neto  Novedades'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 424
            Top = 12
            Width = 73
            Height = 14
            Caption = 'Ingreso Base'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 572
            Top = 12
            Width = 119
            Height = 14
            Caption = 'Cotizacion Obligatoria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object eddias: TEdit
            Left = 35
            Top = 25
            Width = 27
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = eddiasExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtsalariobase: TEdit
            Left = 112
            Top = 24
            Width = 102
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnExit = edtsalariobaseExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtvalorneto: TEdit
            Left = 249
            Top = 24
            Width = 100
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtigresobasecotizacion: TEdit
            Left = 404
            Top = 24
            Width = 116
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnExit = edtigresobasecotizacionExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtcotizacionobligatorio: TEdit
            Left = 575
            Top = 24
            Width = 103
            Height = 21
            Hint = 
              'Escriba el valor del aporte liquidado sobre el ingreso base de c' +
              'otizaci'#243'n, seg'#250'n la tarifa establecida para el Sistema General d' +
              'e Salud, aproximando al m'#250'ltiplo de cien m'#225's cercano.'
            BevelInner = bvSpace
            BevelOuter = bvSpace
            CharCase = ecUpperCase
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnChange = edtcotizacionobligatorioChange
            OnExit = edtcotizacionobligatorioExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
        end
        object GroupBox8: TGroupBox
          Left = 409
          Top = 133
          Width = 197
          Height = 54
          TabOrder = 4
          object Label6: TLabel
            Left = 26
            Top = 13
            Width = 54
            Height = 14
            Caption = 'Valor UPC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 108
            Top = 13
            Width = 85
            Height = 14
            Caption = 'Valor Calculado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtvalupc: TEdit
            Left = 8
            Top = 25
            Width = 91
            Height = 21
            Hint = 
              'Escriba el valor correspondiente al monto de la unidad de pago p' +
              'or capitaci'#243'n de los beneficiarios diferentes al grupo familiar ' +
              'b'#225'sico y que dependen econ'#243'micamente del cotizante'
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnChange = edtvalupcChange
            OnExit = edtvalupcExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edttotalpagadoafiliado: TEdit
            Left = 108
            Top = 25
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
            TabOrder = 1
            OnKeyPress = EDNUMEROKEYPRESS
          end
        end
        object GroupBox9: TGroupBox
          Left = 150
          Top = 47
          Width = 401
          Height = 47
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Visible = False
          object Label31: TLabel
            Left = 7
            Top = 14
            Width = 106
            Height = 14
            Caption = 'No. de Autorizacion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 140
            Top = 12
            Width = 29
            Height = 14
            Caption = 'Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 219
            Top = 12
            Width = 106
            Height = 14
            Caption = 'No. de Autorizacion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 336
            Top = 12
            Width = 29
            Height = 14
            Caption = 'Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtvalincapacidad: TEdit
            Left = 109
            Top = 24
            Width = 93
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
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = edtvalincapacidadExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtnoautlicencia: TEdit
            Left = 218
            Top = 25
            Width = 90
            Height = 21
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtvallicencia: TEdit
            Left = 313
            Top = 24
            Width = 85
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
            OEMConvert = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnExit = edtvallicenciaExit
            OnKeyPress = EDNUMEROKEYPRESS
          end
          object edtautincapacidad: TEdit
            Left = 10
            Top = 25
            Width = 87
            Height = 21
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnKeyPress = EDNUMEROKEYPRESS
          end
        end
        object GroupBox10: TGroupBox
          Left = 7
          Top = 133
          Width = 403
          Height = 54
          Caption = 'Deduciones Incapacidades'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object CheckBox1: TCheckBox
            Left = 30
            Top = 23
            Width = 129
            Height = 17
            Caption = 'Incapacidades E. G.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnExit = CheckBox1Exit
          end
          object CheckBox2: TCheckBox
            Left = 199
            Top = 24
            Width = 158
            Height = 17
            Caption = 'Licencias de Maternidad'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnEnter = CheckBox2Enter
            OnExit = CheckBox2Exit
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 745
        Height = 22
        Align = alTop
        Color = clMedGray
        TabOrder = 2
        object Label43: TLabel
          Left = 188
          Top = 6
          Width = 246
          Height = 13
          Caption = 'LIQUIDACION DETALLADA DE APORTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Consolidado  Planilla de  Aportes'
      ImageIndex = 4
      object pbrgrabardetalle: TProgressBar
        Left = 16
        Top = 376
        Width = 715
        Height = 22
        Orientation = pbVertical
        Position = 10
        TabOrder = 3
      end
      object edtconsecutivo: TEdit
        Left = 20
        Top = 352
        Width = 45
        Height = 21
        Color = clMoneyGreen
        TabOrder = 4
        Visible = False
      end
      object edtfecharecaudo: TEdit
        Left = 94
        Top = 350
        Width = 85
        Height = 21
        Color = clMoneyGreen
        TabOrder = 5
        Visible = False
      end
      object btgrabarplanilla: TBitBtn
        Left = 557
        Top = 313
        Width = 127
        Height = 36
        Caption = '&Grabar  Planilla'
        TabOrder = 2
        OnClick = btgrabarplanillaClick
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
          FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFF00006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000D18C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000D1D1D18C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          00D1D1D1D1D18C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D1
          D1D1D1D1D1D18C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D1D1D1
          D1FAFAFAD1D18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFFFF00D1D1D1D1FA
          FA8C8CFAD1D18C8C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFFFF00D1D1CCD18C
          8C8C8CFAD1D18CD18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFFFF00D1D1648C8C
          8C6464D1D1D18C6DD18C8C8C8C8C006D6DFFFFFFFFFFFFFFFFFF00D1D1648C64
          64D1D1D1D1FAFA6D8D8C8C8C8C8C8C006D6DFFFFFFFFFFFFFFFF00D1D16464D1
          D1D1D1FAFA6D6DB624FA8C8C8C8C8C8C006D6DFFFFFFFFFFFFFF00D1D1D1D1D1
          D1FAFA6D6DB6B6DB2400FA8C8C8C8C8C8C006D6DFFFFFFFFFFFF00D1D1D1D1FA
          FA6D6DB6B6DBDBDB49006DFA8C8C8C8C8C8C006D6DFFFFFFFFFF00D1D1FAFA6D
          6DB6B6DBDBDBDBDB49006D00FA8C8C8C8C8C8C006D6DFFFFFFFF00FAFA246DB6
          B6DBDBDBDBDBDBFF4900B6006DFA8C8C8C8C8C8C006D6DFFFFFF00FA6424B6DB
          DBDBDBDBDBFFFF496D00B6006D00FA8C8C8C8C8C8C006DFFFFFFFF00FA24FFDB
          DBDBDBFFFF4949DBFF00B600B6006DFA8C8C8C8C8C006DFFFFFFFFFF0024FFDB
          DBFFFF4949DBDBFFB600DB00B6006D00FA8C8C8C8C00FFFFFFFFFFFFFF24FFFF
          FF4949DBDBFFFF4992DBDB00B600B6006DFA8C8C8C00FFFFFFFFFFFFFF24FF49
          49DBDBFFFF4949DBDBDB4900DB00B6006D00FA8C8C00FFFFFFFFFFFFFF242424
          DBFFFF4949DBDBDBB649DBDBDB00B600B60064FA8C00FFFFFFFFFFFFFFFFFF24
          FF4924DBDBDBDB4992DBDBDB4900DB00B6006464FA00FFFFFFFFFFFFFFFFFF24
          2424FFDBDB4949DBDBDB4949DBDBDB00B60064FAFA00FFFFFFFFFFFFFFFFFFFF
          FF246D2492DBDBB692B6DBDBB692B66DDB008C6D6DFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00FF4949DBDBDB4949DBDBDBDB4900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF240000DBDBB649DBDBDBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF24FF4992DBDBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF240000DBDB4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF24B649FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF246DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object GroupBox2: TGroupBox
        Left = 530
        Top = 228
        Width = 207
        Height = 71
        Caption = 'Notas de Autoliquidacion'
        Color = clActiveBorder
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label15: TLabel
          Left = 16
          Top = 18
          Width = 45
          Height = 14
          Caption = 'Tipo Nota'
          Color = clActiveBorder
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label45: TLabel
          Left = 4
          Top = 44
          Width = 77
          Height = 14
          Caption = 'Valor de la Nota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = []
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 84
          Top = 40
          Width = 104
          Height = 21
          Color = clMoneyGreen
          TabOrder = 0
        end
        object ComboBox1: TComboBox
          Left = 85
          Top = 16
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clSilver
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'Debito'
            'Credito'
            '')
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 0
        Width = 734
        Height = 228
        Caption = 'AUTOLIQUIDACION APORTES DEL PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 49
          Top = 20
          Width = 104
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total  de  la  Pagina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 23
          Top = 43
          Width = 134
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Aporte del Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 28
          Top = 110
          Width = 122
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor Neto de Aportes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 48
          Top = 134
          Width = 102
          Height = 14
          Alignment = taRightJustify
          Caption = 'Intereses de Mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 1
          Top = 156
          Width = 177
          Height = 14
          Caption = 'Aportes mas intereses de Mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 0
          Top = 179
          Width = 178
          Height = 14
          Caption = 'Menos  Saldo a Favor p. Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 644
          Top = 9
          Width = 75
          Height = 14
          Alignment = taRightJustify
          Caption = 'UPC Adicional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 0
          Top = 202
          Width = 159
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Calculado  en la  planilla'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 330
          Top = 9
          Width = 71
          Height = 14
          Caption = 'Cotizaciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 426
          Top = 8
          Width = 98
          Height = 14
          Caption = 'Incapacidades E.G'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 528
          Top = 8
          Width = 110
          Height = 14
          Caption = 'Licencia Maternidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edttotalplanilla: TEdit
          Left = 303
          Top = 22
          Width = 121
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clSilver
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edttotalaporte: TEdit
          Left = 304
          Top = 45
          Width = 120
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clSilver
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtincapacidad: TEdit
          Left = 304
          Top = 67
          Width = 120
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtlicencia: TEdit
          Left = 304
          Top = 89
          Width = 121
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtnetoaportes: TEdit
          Left = 304
          Top = 112
          Width = 121
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtintereses: TEdit
          Left = 304
          Top = 135
          Width = 121
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
          OnChange = edtinteresesChange
          OnExit = edtinteresesExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtaporteinteteres: TEdit
          Left = 304
          Top = 158
          Width = 121
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtsaldoanterior: TEdit
          Left = 304
          Top = 180
          Width = 122
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = edtsaldoanteriorChange
          OnExit = edtsaldoanteriorExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edttotalpagado: TEdit
          Left = 304
          Top = 203
          Width = 122
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          BiDiMode = bdLeftToRight
          CharCase = ecUpperCase
          Color = clActiveBorder
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object Edit2: TEdit
          Left = 177
          Top = 22
          Width = 121
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 18
        end
        object Edit3: TEdit
          Left = 177
          Top = 45
          Width = 121
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 19
        end
        object Edit5: TEdit
          Left = 177
          Top = 134
          Width = 121
          Height = 21
          Color = clMoneyGreen
          TabOrder = 1
          OnChange = Edit5Change
        end
        object Edit6: TEdit
          Left = 429
          Top = 22
          Width = 101
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 20
        end
        object Edit7: TEdit
          Left = 533
          Top = 22
          Width = 94
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 21
        end
        object Edit8: TEdit
          Left = 429
          Top = 45
          Width = 101
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 22
        end
        object Edit9: TEdit
          Left = 533
          Top = 45
          Width = 94
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 23
        end
        object Edit10: TEdit
          Left = 631
          Top = 22
          Width = 95
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 24
        end
        object Edit11: TEdit
          Left = 631
          Top = 45
          Width = 95
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 25
        end
        object Edit12: TEdit
          Left = 205
          Top = 67
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          TabOrder = 9
        end
        object Edit13: TEdit
          Left = 204
          Top = 89
          Width = 94
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          TabOrder = 11
        end
        object Edit14: TEdit
          Left = 631
          Top = 135
          Width = 95
          Height = 21
          Color = clMoneyGreen
          TabOrder = 3
          OnChange = Edit14Change
          OnExit = Edit14Exit
        end
        object Edit15: TEdit
          Left = 631
          Top = 158
          Width = 95
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 26
        end
        object Edit16: TEdit
          Left = 631
          Top = 180
          Width = 95
          Height = 21
          Color = clMoneyGreen
          TabOrder = 6
          OnChange = Edit16Change
          OnExit = Edit16Exit
        end
        object Edit17: TEdit
          Left = 631
          Top = 203
          Width = 95
          Height = 21
          Color = clActiveBorder
          Enabled = False
          TabOrder = 14
          OnChange = Edit17Change
        end
        object Edit20: TEdit
          Left = 177
          Top = 180
          Width = 121
          Height = 21
          CharCase = ecLowerCase
          Color = clMoneyGreen
          TabOrder = 4
          OnChange = Edit20Change
          OnExit = Edit20Exit
        end
        object edtupc: TEdit
          Left = 631
          Top = 112
          Width = 95
          Height = 21
          BevelInner = bvSpace
          BevelOuter = bvSpace
          CharCase = ecUpperCase
          Color = clBtnFace
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object CheckBox3: TCheckBox
          Left = 2
          Top = 68
          Width = 195
          Height = 20
          Alignment = taLeftJustify
          Caption = '   Menos Incapacidades Pagadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnEnter = CheckBox3Enter
          OnExit = CheckBox3Exit
        end
        object CheckBox4: TCheckBox
          Left = 2
          Top = 91
          Width = 195
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Menos Lic.  Maternidad Pagadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnEnter = CheckBox4Enter
          OnExit = CheckBox4Exit
        end
      end
      object GroupBox11: TGroupBox
        Left = 4
        Top = 228
        Width = 527
        Height = 147
        Caption = 'PAGO DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object Label17: TLabel
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
        object Label18: TLabel
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
        object Label19: TLabel
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
        object Label20: TLabel
          Left = 352
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
        object Label40: TLabel
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
        object Image1: TImage
          Left = 468
          Top = 24
          Width = 19
          Height = 19
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            00009F9F3F808000808000808000808000808000808000808000808000808000
            808000808000808000808000808000808000FFFFFFFFFF00909090C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
            8000FFFFFF909090000000909090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808000FFFFFFC0C0C09090900000009090
            90C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
            8000FFFFFFC0C0C0C0C0C0909090000000909090C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808000FFFFFFC0C0C0C0C0C0C0C0C09090
            90000000909090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
            8000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0909090000000909090C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808000FFFFFFC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0909090000000606060606060606060606060606060C0C0C0C0C0C080
            8000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0606060C0C0C0808000FFFFFFC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0909090909090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090909090909080
            8000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0606060808000FFFFFFC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0606060C0C0C0C0C0C0C0C0C0CFCFCFCFCFCFC0C0C0C0C0C060606080
            8000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060C0C0C0C0C0C0
            CFCFCFCFCFCFC0C0C0606060C0C0C0808000FFFFFFC0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0909090606060C0C0C0C0C0C0C0C0C0606060909090C0C0C080
            8000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060
            606060606060C0C0C0C0C0C0C0C0C0808000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F
            9F3F}
        end
        object cbbanco: TDBLookupComboBox
          Left = 15
          Top = 24
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
          ParentFont = False
          TabOrder = 0
          OnClick = cbbancoClick
        end
        object edtcuenta: TEdit
          Left = 15
          Top = 68
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
          Top = 24
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
          OnEnter = edtcuentaEnter
          OnExit = edtvalefectivoExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edtvalcheque: TEdit
          Left = 328
          Top = 23
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
          OnEnter = edtcuentaEnter
          OnExit = edtvalefectivoExit
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object edttotalconsignado: TEdit
          Left = 16
          Top = 110
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
          OnKeyPress = EDNUMEROKEYPRESS
        end
        object sgdetabanco: TStringGrid
          Left = 160
          Top = 48
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
          OnEnter = sgdetabancoEnter
          OnSelectCell = sgdetabancoSelectCell
          ColWidths = (
            56
            136
            124)
        end
        object CheqDev: TCheckBox
          Left = 488
          Top = 26
          Width = 15
          Height = 17
          Hint = 'Marque aqui si tiene un cheque Devuelto'
          TabOrder = 6
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Incapacidades'
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 745
        Height = 25
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 128
          Top = 6
          Width = 145
          Height = 16
          Caption = 'Incapacidades Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 498
          Top = 6
          Width = 185
          Height = 16
          Caption = 'Incapacidades  Descontadas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 420
        Top = 25
        Width = 325
        Height = 377
        Align = alRight
        TabOrder = 1
        object sgincapacidades: TStringGrid
          Left = 1
          Top = 1
          Width = 323
          Height = 375
          Align = alClient
          Color = clMoneyGreen
          ColCount = 8
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ColWidths = (
            53
            82
            69
            81
            64
            64
            64
            64)
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 25
        Width = 420
        Height = 377
        Align = alClient
        TabOrder = 2
        object Panel9: TPanel
          Left = 1
          Top = 273
          Width = 418
          Height = 103
          Align = alBottom
          TabOrder = 0
          object Descuentos: TGroupBox
            Left = -4
            Top = 1
            Width = 251
            Height = 92
            Caption = 'Descuentos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label51: TLabel
              Left = 13
              Top = 24
              Width = 132
              Height = 14
              Caption = 'Numeros Incapacidades'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label54: TLabel
              Left = 144
              Top = 24
              Width = 96
              Height = 14
              Caption = 'Valor Incapacidad'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit24: TEdit
              Left = 132
              Top = 52
              Width = 109
              Height = 21
              CharCase = ecUpperCase
              Color = clActiveBorder
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnKeyPress = EDNUMEROKEYPRESS
            end
            object Edit25: TEdit
              Left = 9
              Top = 48
              Width = 118
              Height = 21
              Color = cl3DLight
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object Edit26: TEdit
              Left = 132
              Top = 48
              Width = 108
              Height = 21
              Color = cl3DLight
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object GroupBox12: TGroupBox
            Left = 257
            Top = 1
            Width = 197
            Height = 91
            TabOrder = 1
            object Button5: TButton
              Left = 39
              Top = 61
              Width = 118
              Height = 20
              Caption = 'Regresar'
              TabOrder = 0
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 39
              Top = 33
              Width = 117
              Height = 21
              Caption = '&Quitar Lista'
              TabOrder = 1
              OnClick = Button6Click
            end
            object Button2: TButton
              Left = 39
              Top = 9
              Width = 116
              Height = 20
              Caption = '&Adicionar Lista'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = Button2Click
            end
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 418
          Height = 272
          Align = alClient
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 416
            Height = 270
            Align = alClient
            Color = clMoneyGreen
            DataSource = dtsdetincapacidades
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid1CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NUM_INCAPACIDAD'
                Title.Caption = 'Numero Incapacidad'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PER_PAGO_INCAP'
                Title.Caption = 'Periodo A Descontar'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIA_PAGAR_INCAP'
                Title.Caption = 'Dias Autorizados'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VAL_PAGAR_INCAP'
                Title.Caption = 'Valor Autorizado'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'UPC DECLARADAS'
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 745
        Height = 402
        Align = alClient
        TabOrder = 0
        object sgupc: TStringGrid
          Left = 1
          Top = 1
          Width = 743
          Height = 400
          Align = alClient
          Color = clMoneyGreen
          ColCount = 9
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          TabOrder = 0
          ColWidths = (
            36
            78
            33
            85
            213
            47
            41
            68
            39)
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 35
    Align = alTop
    TabOrder = 1
    object Edit18: TEdit
      Left = 22
      Top = 6
      Width = 31
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clScrollBar
      TabOrder = 0
    end
    object Edit19: TEdit
      Left = 58
      Top = 6
      Width = 103
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clScrollBar
      TabOrder = 1
    end
    object Edit21: TEdit
      Left = 176
      Top = 3
      Width = 365
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clScrollBar
      TabOrder = 2
    end
    object Edit22: TEdit
      Left = 558
      Top = 7
      Width = 153
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clScrollBar
      TabOrder = 3
    end
  end
  object dtsdetincapacidades: TDataSource
    DataSet = DataModule1.qrydetincapacidad
    Left = 174
    Top = 96
  end
  object TMPBORRAR: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    Parameters = <>
    Left = 558
    Top = 6
  end
  object qrynovedad166: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NOVEDADES_AFILIADOS'
      
        'WHERE TIP_DOCUMENTO= :'#39'CC'#39' AND NUM_DOCUMENTO= :'#39'NUMERO'#39' AND NOV_' +
        'CODIGO='#39'166'#39)
    Left = 494
    Top = 164
    object qrynovedad166COD_NOVEDAD_AFIL: TBCDField
      FieldName = 'COD_NOVEDAD_AFIL'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object qrynovedad166NOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Size = 3
    end
    object qrynovedad166TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrynovedad166NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrynovedad166COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrynovedad166COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qrynovedad166USU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      Size = 3
    end
    object qrynovedad166USU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Size = 18
    end
    object qrynovedad166FEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
    end
    object qrynovedad166NOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Size = 30
    end
    object qrynovedad166DAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Size = 50
    end
    object qrynovedad166NOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Size = 30
    end
    object qrynovedad166DAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Size = 50
    end
    object qrynovedad166FEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
    end
    object qrynovedad166FEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
    end
    object qrynovedad166TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrynovedad166NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrynovedad166COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrynovedad166NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynovedad166NOV890: TStringField
      FieldName = 'NOV890'
      Size = 2
    end
    object qrynovedad166FEC_ENTREGA_CARNET: TDateTimeField
      FieldName = 'FEC_ENTREGA_CARNET'
    end
    object qrynovedad166TIPO_CARNET: TStringField
      FieldName = 'TIPO_CARNET'
      Size = 2
    end
  end
  object qrydiferenciafechanov166: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIPDOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUMDOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'FECEVENTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 7
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*)  AS DIFERENCIA FROM DET_PLANILLA_AUTOLIQUIDACION'
      
        'WHERE AFI_TIPO_DOC= :'#39'TIPDOC'#39' AND AFI_NUMERO_DOC= :'#39'NUMDOC'#39' AND ' +
        ' PER_COTIZACION>= :'#39'FECEVENTO'#39
      '')
    Left = 530
    Top = 164
    object qrydiferenciafechanov166DIFERENCIA: TIntegerField
      FieldName = 'DIFERENCIA'
      ReadOnly = True
    end
  end
  object qrynovedad166primer: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'doc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'fecevento'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 7
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 * FROM DET_PLANILLA_AUTOLIQUIDACION'
      
        'WHERE AFI_TIPO_DOC= :'#39'tipo'#39' AND AFI_NUMERO_DOC= :'#39'doc'#39' AND  PER_' +
        'COTIZACION>= :'#39'fecevento'#39' ORDER BY SUBSTRING(PER_COTIZACION,3,4)' +
        ' ASC, SUBSTRING(PER_COTIZACION,1,2) ASC'
      '')
    Left = 568
    Top = 164
    object qrynovedad166primerNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynovedad166primerAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrynovedad166primerAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrynovedad166primerNOV_ING: TStringField
      FieldName = 'NOV_ING'
      Size = 1
    end
    object qrynovedad166primerNOV_RET: TStringField
      FieldName = 'NOV_RET'
      Size = 1
    end
    object qrynovedad166primerNOV_TDA: TStringField
      FieldName = 'NOV_TDA'
      Size = 1
    end
    object qrynovedad166primerNOV_TAA: TStringField
      FieldName = 'NOV_TAA'
      Size = 1
    end
    object qrynovedad166primerNOV_VSP: TStringField
      FieldName = 'NOV_VSP'
      Size = 1
    end
    object qrynovedad166primerNOV_VST: TStringField
      FieldName = 'NOV_VST'
      Size = 1
    end
    object qrynovedad166primerNOV_SLN: TStringField
      FieldName = 'NOV_SLN'
      Size = 1
    end
    object qrynovedad166primerNOV_IGE: TStringField
      FieldName = 'NOV_IGE'
      Size = 1
    end
    object qrynovedad166primerNOV_LMA: TStringField
      FieldName = 'NOV_LMA'
      Size = 1
    end
    object qrynovedad166primerNOV_VAC: TStringField
      FieldName = 'NOV_VAC'
      Size = 1
    end
    object qrynovedad166primerDIA_COTIZADOS: TStringField
      FieldName = 'DIA_COTIZADOS'
      Size = 2
    end
    object qrynovedad166primerSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerVAL_NETO_NOV: TBCDField
      FieldName = 'VAL_NETO_NOV'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerING_BASE_COT: TBCDField
      FieldName = 'ING_BASE_COT'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerCOT_OBLIGATORIA: TBCDField
      FieldName = 'COT_OBLIGATORIA'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerNUM_INCAPACIDAD_EGR: TStringField
      FieldName = 'NUM_INCAPACIDAD_EGR'
      Size = 10
    end
    object qrynovedad166primerVAL_INCAPACIDAD_EGR: TBCDField
      FieldName = 'VAL_INCAPACIDAD_EGR'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerNUM_LICENCIA_MAT: TStringField
      FieldName = 'NUM_LICENCIA_MAT'
      Size = 10
    end
    object qrynovedad166primerVAL_LICENCIA_MAT: TBCDField
      FieldName = 'VAL_LICENCIA_MAT'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerVAL_UPC_ADI: TBCDField
      FieldName = 'VAL_UPC_ADI'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerVAL_TOTAL_COT: TBCDField
      FieldName = 'VAL_TOTAL_COT'
      Precision = 18
      Size = 0
    end
    object qrynovedad166primerDET_ESTADO: TStringField
      FieldName = 'DET_ESTADO'
      Size = 3
    end
    object qrynovedad166primerPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrynovedad166primerPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrynovedad166primerCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrynovedad166primerNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qrynovedad166primerNOM_AFILIADO: TStringField
      FieldName = 'NOM_AFILIADO'
      Size = 50
    end
  end
  object qrynovedad166diferencia: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Primercotizacion'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'evento'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DATEDIFF(month,:'#39'Primercotizacion'#39', :'#39'Evento'#39') AS interva' +
        'lo')
    Left = 570
    Top = 194
    object qrynovedad166diferenciaintervalo: TIntegerField
      FieldName = 'intervalo'
      ReadOnly = True
    end
  end
  object qryafiliadosnr: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  TIP_DOCUMENTO_EMP, NUM_DOCUMENTO_EMP,TIP_DOCUMENTO_AFI, ' +
        'NUM_DOCUMENTO_AFI,PRI_APELLIDO,SEG_APELLIDO,PRI_NOMBRE,SEG_NOMBR' +
        'E, VAL_SUELDO_AFIL,FEC_INGRESO_UNI,FEC_EGRESO_UNI,AFILIADOS_EMPR' +
        'ESAS.COD_ESTADO,FEC_NACIMIENTO,COD_SEXO,T1.COD_MODALIDAD_TRA, FE' +
        'C_EGRESO_UNI'
      'FROM AFILIADOS_EMPRESAS,AFILIADOS T1'
      
        'WHERE TIP_DOCUMENTO_AFI = TIP_DOCUMENTO AND  NUM_DOCUMENTO_AFI =' +
        ' NUM_DOCUMENTO AND  TIP_DOCUMENTO_AFI= :"CC" AND NUM_DOCUMENTO_A' +
        'FI= :"DOCUMENTO"')
    Left = 530
    Top = 195
    object qryafiliadosnrTIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qryafiliadosnrNUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qryafiliadosnrTIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object qryafiliadosnrNUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Size = 18
    end
    object qryafiliadosnrPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 30
    end
    object qryafiliadosnrSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 30
    end
    object qryafiliadosnrPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 30
    end
    object qryafiliadosnrSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 30
    end
    object qryafiliadosnrVAL_SUELDO_AFIL: TBCDField
      FieldName = 'VAL_SUELDO_AFIL'
      Precision = 18
      Size = 0
    end
    object qryafiliadosnrFEC_INGRESO_UNI: TDateTimeField
      FieldName = 'FEC_INGRESO_UNI'
    end
    object qryafiliadosnrFEC_EGRESO_UNI: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI'
    end
    object qryafiliadosnrCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryafiliadosnrFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qryafiliadosnrCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qryafiliadosnrCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadosnrFEC_EGRESO_UNI_1: TDateTimeField
      FieldName = 'FEC_EGRESO_UNI_1'
    end
  end
  object qrycorreccion: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PLA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM AUTOLIQUIDACION WHERE  NUM_PLANILLA = :PLA')
    Left = 494
    Top = 195
    object qrycorreccionNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrycorreccionEMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Size = 3
    end
    object qrycorreccionEMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Size = 18
    end
    object qrycorreccionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrycorreccionTIP_DECLARACION: TStringField
      FieldName = 'TIP_DECLARACION'
      Size = 1
    end
    object qrycorreccionFEC_PAGO: TDateTimeField
      FieldName = 'FEC_PAGO'
    end
    object qrycorreccionNUM_PLANILLA_CORR: TStringField
      FieldName = 'NUM_PLANILLA_CORR'
      Size = 15
    end
    object qrycorreccionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
    object qrycorreccionPER_PRESENTACION: TStringField
      FieldName = 'PER_PRESENTACION'
      Size = 7
    end
    object qrycorreccionTOT_PLANILLA: TBCDField
      FieldName = 'TOT_PLANILLA'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_APORTE_PER: TBCDField
      FieldName = 'TOT_APORTE_PER'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_INCAPACIDAD: TBCDField
      FieldName = 'TOT_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_LICENCIAS: TBCDField
      FieldName = 'TOT_LICENCIAS'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_APORTE: TBCDField
      FieldName = 'TOT_APORTE'
      Precision = 18
      Size = 0
    end
    object qrycorreccionINT_MORA: TBCDField
      FieldName = 'INT_MORA'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_APORTE_MMORA: TBCDField
      FieldName = 'TOT_APORTE_MMORA'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_SALDO_FAV: TBCDField
      FieldName = 'TOT_SALDO_FAV'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_UPC: TBCDField
      FieldName = 'TOT_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionTOT_PAGADO: TBCDField
      FieldName = 'TOT_PAGADO'
      Precision = 18
      Size = 0
    end
    object qrycorreccionCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Size = 3
    end
    object qrycorreccionNUM_CUENTA: TStringField
      FieldName = 'NUM_CUENTA'
    end
    object qrycorreccionVAL_EFECTIVO: TBCDField
      FieldName = 'VAL_EFECTIVO'
      Precision = 18
      Size = 0
    end
    object qrycorreccionVAL_CHEQUE: TBCDField
      FieldName = 'VAL_CHEQUE'
      Precision = 18
      Size = 0
    end
    object qrycorreccionEST_PLANILLA: TStringField
      FieldName = 'EST_PLANILLA'
      Size = 3
    end
    object qrycorreccionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qrycorreccionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrycorreccionNUM_DECLARACION: TBCDField
      FieldName = 'NUM_DECLARACION'
      Precision = 10
      Size = 0
    end
    object qrycorreccionCRU_CONCILIACION: TStringField
      FieldName = 'CRU_CONCILIACION'
      Size = 1
    end
    object qrycorreccionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qrycorreccionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qrycorreccionNUM_DOC_USUARIO: TStringField
      FieldName = 'NUM_DOC_USUARIO'
      Size = 18
    end
    object qrycorreccionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qrycorreccionNO_INCAP_PAG: TStringField
      FieldName = 'NO_INCAP_PAG'
      Size = 30
    end
    object qrycorreccionVAL_INCAP_PAG: TBCDField
      FieldName = 'VAL_INCAP_PAG'
      Precision = 18
      Size = 0
    end
    object qrycorreccionNO_LICEN_PAG: TStringField
      FieldName = 'NO_LICEN_PAG'
      Size = 30
    end
    object qrycorreccionVAL_LICEN_PAG: TBCDField
      FieldName = 'VAL_LICEN_PAG'
      Precision = 18
      Size = 0
    end
    object qrycorreccionNO_MESES_MORA: TBCDField
      FieldName = 'NO_MESES_MORA'
      Precision = 18
      Size = 0
    end
    object qrycorreccionNO_PLANINILLA_ANT: TStringField
      FieldName = 'NO_PLANINILLA_ANT'
      Size = 15
    end
    object qrycorreccionVAL_NETO_UPC: TBCDField
      FieldName = 'VAL_NETO_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionVAL_INTERES_UPC: TBCDField
      FieldName = 'VAL_INTERES_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionVAL_APORMASINT_UPC: TBCDField
      FieldName = 'VAL_APORMASINT_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionVAL_SALFAVOR_UPC: TBCDField
      FieldName = 'VAL_SALFAVOR_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionVAL_PAGO_UPC: TBCDField
      FieldName = 'VAL_PAGO_UPC'
      Precision = 18
      Size = 0
    end
    object qrycorreccionNUM_LOTE: TStringField
      FieldName = 'NUM_LOTE'
      Size = 10
    end
    object qrycorreccionNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 50
    end
  end
  object qrynota: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NOTA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'VALOR'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 18
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NOTAS_AUTOLIQUIDACION '
      
        'WHERE NUM_PLANILLA = :NOTA AND TIP_NOTA='#39'D'#39' AND VAL_NOTA = :VALO' +
        'R')
    Left = 494
    Top = 227
    object qrynotaNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynotaTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotaNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotaTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotaVAL_NOTA: TBCDField
      FieldName = 'VAL_NOTA'
      Precision = 18
      Size = 0
    end
    object qrynotaNUM_COMP_DES: TStringField
      FieldName = 'NUM_COMP_DES'
      Size = 15
    end
    object qrynotaFEC_DESCUENTO: TDateTimeField
      FieldName = 'FEC_DESCUENTO'
    end
    object qrynotaTIP_DESCUENTO: TStringField
      FieldName = 'TIP_DESCUENTO'
      Size = 1
    end
    object qrynotaTIP_NOTA2: TStringField
      FieldName = 'TIP_NOTA2'
      FixedChar = True
      Size = 1
    end
    object qrynotaPER_PAGO_NOTA: TDateTimeField
      FieldName = 'PER_PAGO_NOTA'
    end
  end
  object qrynovedad187: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM NOVEDADES_AFILIADOS'
      
        'WHERE TIP_DOCUMENTO= :'#39'CC'#39' AND NUM_DOCUMENTO= :'#39'NUMERO'#39' AND NOV_' +
        'CODIGO='#39'187'#39)
    Left = 532
    Top = 228
    object qrynovedad187COD_NOVEDAD_AFIL: TBCDField
      FieldName = 'COD_NOVEDAD_AFIL'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object qrynovedad187NOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      Size = 3
    end
    object qrynovedad187TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrynovedad187NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrynovedad187COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrynovedad187COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qrynovedad187USU_TIPO_DOC: TStringField
      FieldName = 'USU_TIPO_DOC'
      Size = 3
    end
    object qrynovedad187USU_NUMERO_DOC: TStringField
      FieldName = 'USU_NUMERO_DOC'
      Size = 18
    end
    object qrynovedad187FEC_NOVEDAD_AFIL: TDateTimeField
      FieldName = 'FEC_NOVEDAD_AFIL'
    end
    object qrynovedad187NOM_CAMPO: TStringField
      FieldName = 'NOM_CAMPO'
      Size = 30
    end
    object qrynovedad187DAT_CAMPO_ANT: TStringField
      FieldName = 'DAT_CAMPO_ANT'
      Size = 50
    end
    object qrynovedad187NOM_TABLA: TStringField
      FieldName = 'NOM_TABLA'
      Size = 30
    end
    object qrynovedad187DAT_CAMPO_DES: TStringField
      FieldName = 'DAT_CAMPO_DES'
      Size = 50
    end
    object qrynovedad187FEC_EVENTO: TDateTimeField
      FieldName = 'FEC_EVENTO'
    end
    object qrynovedad187FEC_APLICATIVO: TDateTimeField
      FieldName = 'FEC_APLICATIVO'
    end
    object qrynovedad187TIP_DOCUMENTO_EMP: TStringField
      FieldName = 'TIP_DOCUMENTO_EMP'
      Size = 3
    end
    object qrynovedad187NUM_DOCUMENTO_EMP: TStringField
      FieldName = 'NUM_DOCUMENTO_EMP'
      Size = 18
    end
    object qrynovedad187COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrynovedad187NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynovedad187NOV890: TStringField
      FieldName = 'NOV890'
      Size = 2
    end
    object qrynovedad187FEC_ENTREGA_CARNET: TDateTimeField
      FieldName = 'FEC_ENTREGA_CARNET'
    end
    object qrynovedad187TIPO_CARNET: TStringField
      FieldName = 'TIPO_CARNET'
      Size = 2
    end
    object qrynovedad187MOT_NO_ENTREGA: TStringField
      FieldName = 'MOT_NO_ENTREGA'
      Size = 25
    end
  end
  object qrymesesdif: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FEC166'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC187'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  DATEDIFF(MONTH, :FEC166, :FEC187) AS MESESDIFF')
    Left = 572
    Top = 227
    object qrymesesdifMESESDIFF: TIntegerField
      FieldName = 'MESESDIFF'
      ReadOnly = True
    end
  end
end

object frmautoliquidacionmagnetica: Tfrmautoliquidacionmagnetica
  Left = 181
  Top = 187
  Width = 762
  Height = 501
  Caption = 'Autoliquidaciones Medio Magnetico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label39: TLabel
    Left = 494
    Top = 60
    Width = 91
    Height = 13
    Caption = 'Val Lic. Maternidad'
  end
  object Label40: TLabel
    Left = 506
    Top = 60
    Width = 38
    Height = 13
    Caption = 'Label40'
  end
  object Label46: TLabel
    Left = 514
    Top = 38
    Width = 38
    Height = 13
    Caption = 'Label46'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 754
    Height = 474
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Encabezado Autoliquidacion'
      object Label47: TLabel
        Left = 207
        Top = 27
        Width = 328
        Height = 23
        Caption = 'APORTES  EN MEDIO MAGNETICO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 578
        Top = 6
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
      object Label1: TLabel
        Left = 457
        Top = 76
        Width = 87
        Height = 13
        Caption = 'Numero de Planilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 74
        Width = 76
        Height = 13
        Caption = 'Nombre Archivo'
        Color = clBtnFace
        ParentColor = False
      end
      object Label27: TLabel
        Left = 199
        Top = 106
        Width = 71
        Height = 13
        Caption = 'Tipo de Aporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 365
        Top = 108
        Width = 56
        Height = 13
        Caption = 'Fecha Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 457
        Top = 105
        Width = 70
        Height = 13
        Caption = 'Pdo Cotizacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 591
        Top = 101
        Width = 72
        Height = 13
        Caption = 'P.Presentacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 48
        Top = 107
        Width = 105
        Height = 13
        Caption = 'Confirmacion  Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = -143
        Top = 54
        Width = 844
        Height = 9
        TabOrder = 8
      end
      object btnlimpiar: TBitBtn
        Left = 102
        Top = 407
        Width = 124
        Height = 30
        Caption = 'Numero Archivo'
        TabOrder = 9
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
      object GroupBox2: TGroupBox
        Left = 46
        Top = 144
        Width = 640
        Height = 253
        Caption = 'DATOS  GENERALES  DEL APORTANTE'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Label17: TLabel
          Left = 18
          Top = 15
          Width = 20
          Height = 13
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 70
          Top = 15
          Width = 89
          Height = 13
          Caption = 'Nro Doc.  empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 164
          Top = 14
          Width = 40
          Height = 13
          Caption = 'Sucursal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 296
          Top = 15
          Width = 136
          Height = 13
          Caption = 'Razon  Social de la  Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 198
          Top = 51
          Width = 149
          Height = 13
          Caption = 'Direccion  de   correspondencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 18
          Top = 90
          Width = 31
          Height = 13
          Caption = 'codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 66
          Top = 91
          Width = 150
          Height = 13
          Caption = ' Y    Nombre  del Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 266
          Top = 91
          Width = 145
          Height = 13
          Caption = 'Codigo y Nombre de la  ciudad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 466
          Top = 91
          Width = 42
          Height = 13
          Caption = 'Telefono'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 551
          Top = 91
          Width = 58
          Height = 13
          Caption = 'Numero Fax'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 35
          Top = 131
          Width = 53
          Height = 13
          Caption = 'Codigo Arp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 281
          Top = 132
          Width = 152
          Height = 13
          Caption = 'Razon  Social de  La  Nueva Arp'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 10
          Top = 170
          Width = 139
          Height = 13
          Caption = 'Numero Planilla de  Correcion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 204
          Top = 170
          Width = 116
          Height = 13
          Caption = 'Forma  de  Presentacion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 404
          Top = 172
          Width = 101
          Height = 13
          Caption = 'Numero de Empleado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 540
          Top = 174
          Width = 67
          Height = 13
          Caption = 'Total Afiliados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 36
          Top = 206
          Width = 93
          Height = 13
          Caption = 'Clase de Aportante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 190
          Top = 207
          Width = 59
          Height = 13
          Caption = 'Ultimo Digito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 291
          Top = 206
          Width = 94
          Height = 13
          Caption = 'Ultimo  dia  de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbtipoideempresa: TComboBox
          Left = 9
          Top = 30
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          MaxLength = 2
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'NIT'
            'CC'
            'CE')
        end
        object edtnumdocempresa: TEdit
          Left = 66
          Top = 30
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 40
          ParentFont = False
          TabOrder = 1
        end
        object edtsucursal: TEdit
          Left = 170
          Top = 30
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
        end
        object edtrazonsocial: TEdit
          Left = 207
          Top = 30
          Width = 405
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 40
          ParentFont = False
          TabOrder = 3
        end
        object edtdireccion: TEdit
          Left = 9
          Top = 67
          Width = 602
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtcoddepartamento: TEdit
          Left = 9
          Top = 105
          Width = 42
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object edtdepartamento: TEdit
          Left = 52
          Top = 105
          Width = 166
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object edtcodciudad: TEdit
          Left = 222
          Top = 105
          Width = 47
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object edtciudad: TEdit
          Left = 271
          Top = 105
          Width = 158
          Height = 21
          CharCase = ecUpperCase
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
        object edttelefono: TEdit
          Left = 431
          Top = 105
          Width = 113
          Height = 21
          CharCase = ecUpperCase
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
        object edtfax: TEdit
          Left = 547
          Top = 105
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object edtcodarp: TEdit
          Left = 9
          Top = 144
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object edtnombrearp: TEdit
          Left = 144
          Top = 145
          Width = 469
          Height = 21
          CharCase = ecUpperCase
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
        object edtnumcorrecion: TEdit
          Left = 9
          Top = 184
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object cbpresentacion: TComboBox
          Left = 167
          Top = 185
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 14
          Items.Strings = (
            'UNICA'
            'CONSOLIDADA'
            'SUCURSAL')
        end
        object edtnumtrabajadores: TEdit
          Left = 409
          Top = 187
          Width = 90
          Height = 21
          CharCase = ecUpperCase
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
        object edtnumafiliados: TEdit
          Left = 533
          Top = 188
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object edtclaseaportante: TComboBox
          Left = 8
          Top = 221
          Width = 154
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 17
          Items.Strings = (
            'GRANDE'
            'PEQUE'#209'O'
            'INDEPENDIENTE')
        end
        object edtdigito: TEdit
          Left = 191
          Top = 220
          Width = 53
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object edtultimafechapago: TEdit
          Left = 268
          Top = 219
          Width = 130
          Height = 21
          Color = clActiveBorder
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object rgestado: TRadioGroup
          Left = 402
          Top = 212
          Width = 215
          Height = 29
          Caption = 'Estado Empresa'
          Color = clActiveBorder
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Regitrada'
            'No Registrada')
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object edtconsecutivo: TEdit
          Left = 17
          Top = 271
          Width = 117
          Height = 21
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          Visible = False
        end
        object edtfecharecaudo: TEdit
          Left = 154
          Top = 275
          Width = 145
          Height = 21
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          Visible = False
        end
      end
      object edtnumplanilla: TEdit
        Left = 553
        Top = 73
        Width = 122
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImeMode = imClose
        MaxLength = 15
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnChange = edtnumplanillaChange
        OnEnter = edtnumplanillaEnter
        OnExit = edtnumplanillaExit
      end
      object cargar_archivo: TBitBtn
        Left = 473
        Top = 410
        Width = 122
        Height = 30
        Caption = 'Validar Medio Magnetico'
        TabOrder = 10
        Visible = False
        OnClick = cargar_archivoClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000040404040404040404040404040404040404040
          4040404040404040404040404040404040404040404040606060004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040002020004040
          0040400040400040400040400040400040400040400040400040400040400040
          400040400040402020200020203F7F7F7FBFBF7FBFBF7FBFBF7FBFBF3F7F7F00
          4040004040004040004040004040004040004040004040000000FFFFFF3F3F3F
          FF7FFFFF7FFFFF7FFFFF7FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object edtnombrearchivo: TEdit
        Left = 124
        Top = 73
        Width = 262
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        ImeMode = imClose
        TabOrder = 11
        OnDblClick = FormCreate
      end
      object cbtipoaporte: TComboBox
        Left = 165
        Top = 121
        Width = 184
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 3
        OnEnter = cbtipoaporteEnter
        OnExit = cbtipoaporteExit
        Items.Strings = (
          'DECLARACION'
          'ADICION')
      end
      object dtfechapago: TDateTimePicker
        Left = 353
        Top = 122
        Width = 99
        Height = 21
        Date = 37243.000000000000000000
        Time = 37243.000000000000000000
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = dtfechapagoExit
      end
      object edtperiodo: TEdit
        Left = 462
        Top = 122
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = edtperiodoExit
      end
      object mkperiodo: TMaskEdit
        Left = 592
        Top = 118
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object Edit1: TEdit
        Left = 49
        Top = 121
        Width = 108
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
        TabOrder = 2
        OnExit = Edit1Exit
      end
      object CHBFIE: TCheckBox
        Left = 408
        Top = 74
        Width = 37
        Height = 17
        Caption = 'FIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cargar_archivo_fie: TBitBtn
        Left = 291
        Top = 410
        Width = 162
        Height = 30
        Caption = 'Validar Medio Magnetico FIE'
        TabOrder = 12
        Visible = False
        OnClick = cargar_archivo_fieClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000040404040404040404040404040404040404040
          4040404040404040404040404040404040404040404040606060004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040004040008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808040404000404000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080404040002020004040
          0040400040400040400040400040400040400040400040400040400040400040
          400040400040402020200020203F7F7F7FBFBF7FBFBF7FBFBF7FBFBF3F7F7F00
          4040004040004040004040004040004040004040004040000000FFFFFF3F3F3F
          FF7FFFFF7FFFFF7FFFFF7FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle  de la Autoliquidacion'
      ImageIndex = 1
      object sgdetalle: TStringGrid
        Left = 0
        Top = 0
        Width = 746
        Height = 446
        Align = alClient
        Color = clMoneyGreen
        ColCount = 26
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goRowSelect]
        TabOrder = 0
        ColWidths = (
          64
          35
          70
          128
          32
          38
          37
          43
          40
          47
          43
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
          64
          64
          64
          64)
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Consolidado Autoliquidacion'
      ImageIndex = 2
      object Label57: TLabel
        Left = 552
        Top = 325
        Width = 72
        Height = 14
        Caption = 'Numero Lote'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object pbrgrabar: TProgressBar
        Left = 18
        Top = 396
        Width = 704
        Height = 21
        TabOrder = 0
      end
      object btgrabarplanilla: TBitBtn
        Left = 569
        Top = 328
        Width = 144
        Height = 35
        Caption = '&Grabar  Planilla'
        TabOrder = 4
        OnClick = btgrabarplanillaClick
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
      object GroupBox3: TGroupBox
        Left = 8
        Top = 8
        Width = 727
        Height = 236
        Caption = 'APORTES DEL PERIODOS'
        TabOrder = 1
        object Label8: TLabel
          Left = 53
          Top = 19
          Width = 162
          Height = 14
          Caption = 'Total  de  aportes del Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 209
          Top = 3
          Width = 110
          Height = 14
          Caption = 'Ing. Base Cotizacion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 325
          Top = 3
          Width = 84
          Height = 14
          Caption = 'Cot. Obligatoria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 428
          Top = 3
          Width = 84
          Height = 14
          Caption = 'Val Incapacidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 520
          Top = 3
          Width = 101
          Height = 14
          Caption = 'Val Lic Maternidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 630
          Top = 3
          Width = 75
          Height = 14
          Caption = 'UPC Adicional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 113
          Top = 215
          Width = 102
          Height = 14
          Caption = 'Valor Total a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 67
          Top = 188
          Width = 149
          Height = 14
          Caption = 'Saldo a  favor Mes Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 36
          Top = 161
          Width = 179
          Height = 14
          Caption = 'Aportes  Mas Intereses de Mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 87
          Top = 132
          Width = 128
          Height = 14
          Caption = 'Mas Intereses de Mora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 103
          Top = 106
          Width = 112
          Height = 14
          Caption = 'Valor Aportes Netos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 45
          Top = 79
          Width = 170
          Height = 14
          Caption = 'Licencias de Maternidad pagas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 96
          Top = 52
          Width = 119
          Height = 14
          Caption = 'Menos Incapacidades'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'GoudyOlSt BT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtingresobase: TEdit
          Left = 222
          Top = 18
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
        end
        object edtcotizobligatoria: TEdit
          Left = 330
          Top = 18
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
        end
        object edtvallicematernidad: TEdit
          Left = 530
          Top = 18
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
        end
        object edtvalupc: TEdit
          Left = 626
          Top = 18
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 3
        end
        object edtmincnroautorizacion: TEdit
          Left = 222
          Top = 47
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 4
        end
        object edtlmbasecotizacion: TEdit
          Left = 222
          Top = 75
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 5
        end
        object edtningresobasecot: TEdit
          Left = 222
          Top = 104
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 6
        end
        object edtibasecotizacion: TEdit
          Left = 222
          Top = 131
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 7
        end
        object edtimbasecotizacion: TEdit
          Left = 222
          Top = 158
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 8
        end
        object edtsfnroplanilla: TEdit
          Left = 222
          Top = 185
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 9
        end
        object edtspbasecotizacion: TEdit
          Left = 222
          Top = 210
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 10
        end
        object edtspcotizobligatoria: TEdit
          Left = 329
          Top = 210
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          MaxLength = 10
          ReadOnly = True
          TabOrder = 11
        end
        object edtsfcotobligatoria: TEdit
          Left = 329
          Top = 185
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 12
        end
        object edtimcotobligatoria: TEdit
          Left = 329
          Top = 158
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 13
        end
        object edticotobligatoria: TEdit
          Left = 329
          Top = 131
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 14
        end
        object edtncotizobligatoria: TEdit
          Left = 329
          Top = 104
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 15
        end
        object edtlmcotobligatoria: TEdit
          Left = 329
          Top = 75
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 16
        end
        object edtmincotizacionobligatoria: TEdit
          Left = 329
          Top = 47
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 17
        end
        object edtincpacidadeg: TEdit
          Left = 428
          Top = 18
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 18
        end
        object edtmincvalincapacidad: TEdit
          Left = 429
          Top = 47
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 19
        end
        object edtlmvalincapacidad: TEdit
          Left = 429
          Top = 75
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 20
        end
        object edtnvalincapacidad: TEdit
          Left = 429
          Top = 104
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 21
        end
        object edtivalincapacidad: TEdit
          Left = 429
          Top = 131
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 22
        end
        object edtimvalincapacidad: TEdit
          Left = 429
          Top = 158
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 23
        end
        object edtsfvalincapacidad: TEdit
          Left = 429
          Top = 185
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 24
        end
        object edtspvalincapacidad: TEdit
          Left = 428
          Top = 210
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 25
        end
        object edtspvallicencia: TEdit
          Left = 529
          Top = 210
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 26
        end
        object edtsfvallicencia: TEdit
          Left = 529
          Top = 185
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 27
        end
        object edtimvallicencia: TEdit
          Left = 529
          Top = 158
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 28
        end
        object edtivallicencia: TEdit
          Left = 529
          Top = 131
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 29
        end
        object edtlnlicencia: TEdit
          Left = 529
          Top = 104
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 30
        end
        object edtlmvallmaternidad: TEdit
          Left = 529
          Top = 75
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 31
        end
        object edtminvallicencia: TEdit
          Left = 529
          Top = 47
          Width = 83
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 32
        end
        object edtmvalupc: TEdit
          Left = 626
          Top = 47
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 33
        end
        object edtlmupc: TEdit
          Left = 626
          Top = 75
          Width = 82
          Height = 21
          CharCase = ecUpperCase
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 34
        end
        object edtnvalupc: TEdit
          Left = 626
          Top = 104
          Width = 82
          Height = 21
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 35
        end
        object edtivalupc: TEdit
          Left = 626
          Top = 131
          Width = 82
          Height = 21
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 36
        end
        object edtimvalupc: TEdit
          Left = 626
          Top = 158
          Width = 82
          Height = 21
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 37
        end
        object edtsfvalupc: TEdit
          Left = 626
          Top = 185
          Width = 82
          Height = 21
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 38
        end
        object edtspvalupc: TEdit
          Left = 626
          Top = 210
          Width = 82
          Height = 21
          Color = clActiveBorder
          Enabled = False
          MaxLength = 10
          TabOrder = 39
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 241
        Width = 515
        Height = 147
        Caption = 'PAGO DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label3: TLabel
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
        object Label4: TLabel
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
        object Label5: TLabel
          Left = 209
          Top = 11
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
        object Label6: TLabel
          Left = 362
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
        object Label7: TLabel
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
          OnClick = CBBANCOCLICK
        end
        object EDTCUENTA: TEdit
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
          OnExit = edtvalefectivoExit
          OnKeyPress = edtvalefectivoKeyPress
        end
        object edtvalcheque: TEdit
          Left = 324
          Top = 24
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
          OnKeyPress = edtvalefectivoKeyPress
        end
        object EDTVALORPAGADO: TEdit
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
        end
        object sgdetabanco: TStringGrid
          Left = 162
          Top = 48
          Width = 345
          Height = 87
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
          OnSelectCell = sgdetabancoSelectCell
          ColWidths = (
            49
            116
            115)
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
      object GroupBox4: TGroupBox
        Left = 522
        Top = 241
        Width = 213
        Height = 71
        Caption = 'Notas de Autoliquidacion'
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object Label49: TLabel
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
        object Label50: TLabel
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
      object Edit27: TEdit
        Left = 654
        Top = 321
        Width = 61
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
        TabOrder = 3
        Visible = False
        OnKeyPress = edtvalefectivoKeyPress
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Upc adicionales y Incapacidades'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 189
        Width = 746
        Height = 257
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 0
        object sgincapacidades: TStringGrid
          Left = 1
          Top = 1
          Width = 740
          Height = 251
          Align = alClient
          Color = clMoneyGreen
          ColCount = 10
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ColWidths = (
            44
            45
            52
            77
            81
            64
            64
            84
            39
            90)
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 746
        Height = 189
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 1
        object sgupc: TStringGrid
          Left = 1
          Top = 1
          Width = 740
          Height = 183
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
  object opabrir: TOpenDialog
    DefaultExt = '*.txt'
    FileName = '*.txt'
    Filter = '*.txt'
    InitialDir = 'C:\'
    Left = 706
    Top = 434
  end
  object qryRetiro: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    Parameters = <>
    Left = 564
    Top = 56
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
end

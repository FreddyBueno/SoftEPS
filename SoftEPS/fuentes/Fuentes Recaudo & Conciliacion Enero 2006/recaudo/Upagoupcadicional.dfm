object frmpagoupc: Tfrmpagoupc
  Left = 15
  Top = 144
  Width = 784
  Height = 501
  BorderIcons = [biSystemMenu]
  Caption = 'Pago de  Beneficiarios Adicionales  por separado'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 56
    Align = alTop
    TabOrder = 0
    object Label19: TLabel
      Left = 220
      Top = 19
      Width = 337
      Height = 23
      Caption = 'APORTES  DE UPC POR  SEPARADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 645
      Top = 10
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
    object GroupBox1: TGroupBox
      Left = 17
      Top = 40
      Width = 756
      Height = 8
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 776
    Height = 418
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 774
      Height = 416
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Encabezado Planilla'
        object Label1: TLabel
          Left = 472
          Top = 44
          Width = 88
          Height = 13
          Caption = 'Numero de Planilla'
        end
        object edtplanilla: TEdit
          Left = 573
          Top = 37
          Width = 99
          Height = 21
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edtplanillaExit
          OnKeyPress = edtplanillaKeyPress
        end
        object spnuevo: TBitBtn
          Left = 541
          Top = 308
          Width = 122
          Height = 39
          Caption = 'Nuevo Registro'
          ModalResult = 1
          TabOrder = 2
          OnClick = spnuevoClick
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
          Left = 52
          Top = 74
          Width = 641
          Height = 224
          Caption = 'Datos  de Cotizante '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label2: TLabel
            Left = 44
            Top = 14
            Width = 47
            Height = 14
            Caption = 'Tipo Doc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 119
            Top = 15
            Width = 110
            Height = 14
            Caption = 'Numero Documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 327
            Top = 15
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
          object Label16: TLabel
            Left = 84
            Top = 72
            Width = 90
            Height = 14
            Caption = 'Tipo declaracion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 269
            Top = 72
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
          object Label18: TLabel
            Left = 410
            Top = 72
            Width = 83
            Height = 14
            Caption = 'Compensacion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 514
            Top = 72
            Width = 73
            Height = 14
            Caption = 'Presentacion'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 69
            Top = 125
            Width = 115
            Height = 14
            Caption = 'Documento Empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 213
            Top = 125
            Width = 48
            Height = 14
            Caption = 'Sucursal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 303
            Top = 125
            Width = 156
            Height = 14
            Caption = 'Razon Social  de la  empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 124
            Top = 176
            Width = 99
            Height = 14
            Caption = 'Tipo de Aportante'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'GoudyOlSt BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 398
            Top = 176
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
            Left = 499
            Top = 176
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
          object cbtipodocafiliado: TComboBox
            Left = 40
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            OnExit = cbtipodocafiliadoExit
            Items.Strings = (
              'CC'
              'CE'
              'TI'
              'RC')
          end
          object edtnumeroducafiliado: TEdit
            Left = 105
            Top = 30
            Width = 121
            Height = 21
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnExit = EDTNUMERODUCAFILIADOEXIT
            OnKeyPress = edtplanillaKeyPress
          end
          object edtnomafiliado: TEdit
            Left = 256
            Top = 30
            Width = 333
            Height = 21
            Color = clBtnFace
            Enabled = False
            TabOrder = 2
          end
          object cbtipodeclaracion: TComboBox
            Left = 42
            Top = 86
            Width = 183
            Height = 21
            Style = csDropDownList
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            MaxLength = 1
            ParentFont = False
            TabOrder = 3
            OnEnter = cbtipodeclaracionEnter
            OnExit = cbtipodeclaracionExit
            Items.Strings = (
              'Declaracion'
              'Adicion')
          end
          object dtfechapago: TDateTimePicker
            Left = 258
            Top = 86
            Width = 103
            Height = 21
            BiDiMode = bdLeftToRight
            CalAlignment = dtaRight
            Date = 37214.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 37214.000000000000000000
            Color = clMoneyGreen
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            OnEnter = dtfechapagoEnter
            OnExit = dtfechapagoExit
          end
          object edtperiodo: TMaskEdit
            Left = 421
            Top = 86
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            Color = clMoneyGreen
            EditMask = '!99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 7
            ParentFont = False
            TabOrder = 5
            Text = '  /    '
            OnExit = edtperiodoExit
          end
          object msperpresentacion: TMaskEdit
            Left = 525
            Top = 86
            Width = 60
            Height = 21
            Color = clActiveBorder
            EditMask = '!99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 7
            ParentFont = False
            TabOrder = 6
            Text = '  /    '
            OnExit = msperpresentacionExit
          end
          object cbtipodocempresa: TEdit
            Left = 44
            Top = 138
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            Color = clActiveBorder
            Enabled = False
            TabOrder = 7
          end
          object ednumero: TEdit
            Left = 99
            Top = 138
            Width = 123
            Height = 21
            CharCase = ecUpperCase
            Color = clActiveBorder
            Enabled = False
            TabOrder = 8
          end
          object edtsucursal: TEdit
            Left = 223
            Top = 138
            Width = 27
            Height = 21
            CharCase = ecUpperCase
            Color = clActiveBorder
            Enabled = False
            TabOrder = 9
          end
          object edtnombreempresa: TEdit
            Left = 251
            Top = 138
            Width = 330
            Height = 21
            CharCase = ecUpperCase
            Color = clActiveBorder
            Enabled = False
            TabOrder = 10
          end
          object cbtipoaportante: TComboBox
            Left = 45
            Top = 190
            Width = 319
            Height = 21
            Style = csDropDownList
            Color = clActiveBorder
            Enabled = False
            ItemHeight = 13
            TabOrder = 11
            Items.Strings = (
              'Grandes  Aportantes'
              'Peque'#241'os Aportantes')
          end
          object edtdigito: TEdit
            Left = 393
            Top = 190
            Width = 65
            Height = 21
            Color = clActiveBorder
            Enabled = False
            TabOrder = 12
          end
          object edtultimafechapago: TEdit
            Left = 481
            Top = 190
            Width = 99
            Height = 21
            Color = clActiveBorder
            Enabled = False
            TabOrder = 13
          end
          object BitBtn1: TBitBtn
            Left = 228
            Top = 30
            Width = 27
            Height = 21
            Caption = '...'
            TabOrder = 14
            OnClick = BitBtn1Click
          end
        end
        object BitBtn2: TBitBtn
          Left = 169
          Top = 312
          Width = 122
          Height = 39
          Caption = 'Borrar Planilla '
          ModalResult = 1
          TabOrder = 3
          OnClick = BitBtn2Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Detalle de los  Beneficiarios  Adicionales'
        ImageIndex = 1
        OnEnter = TabSheet2Enter
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 766
          Height = 208
          Align = alTop
          Caption = 'Panel3'
          TabOrder = 0
          object GroupBox6: TGroupBox
            Left = 1
            Top = 1
            Width = 764
            Height = 206
            Align = alClient
            Caption = 'Lista deBeneficiarios del Afiliado'
            TabOrder = 0
            object sgupc: TStringGrid
              Left = 2
              Top = 15
              Width = 760
              Height = 189
              Align = alClient
              Color = clMoneyGreen
              ColCount = 9
              FixedCols = 0
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs, goRowSelect]
              TabOrder = 0
              ColWidths = (
                35
                83
                44
                77
                236
                55
                58
                71
                64)
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 208
          Width = 766
          Height = 180
          Align = alClient
          TabOrder = 1
          object GroupBox7: TGroupBox
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
              Left = 31
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
            object Label11: TLabel
              Left = 132
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
            object Label12: TLabel
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
            object Label26: TLabel
              Left = 543
              Top = 11
              Width = 27
              Height = 14
              Caption = 'Sexo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 649
              Top = 10
              Width = 26
              Height = 14
              Caption = 'Edad'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboBox2: TComboBox
              Left = 17
              Top = 24
              Width = 52
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
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
                'TI'
                'RC')
            end
            object Edit1: TEdit
              Left = 80
              Top = 23
              Width = 121
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
              OnExit = EDTNUMERODUCAFILIADOEXIT
            end
            object Button4: TButton
              Left = 206
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
            end
            object edtnombreafiliado: TEdit
              Left = 231
              Top = 23
              Width = 290
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
            object ComboBox3: TComboBox
              Left = 529
              Top = 23
              Width = 88
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              Color = clMoneyGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemHeight = 13
              ParentFont = False
              TabOrder = 4
              Items.Strings = (
                'CC'
                'CE'
                'TI'
                'RC')
            end
            object Edit2: TEdit
              Left = 621
              Top = 22
              Width = 91
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
              TabOrder = 5
              OnExit = EDTNUMERODUCAFILIADOEXIT
            end
          end
          object GroupBox8: TGroupBox
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
          object GroupBox9: TGroupBox
            Left = 9
            Top = 86
            Width = 386
            Height = 50
            Caption = 'Valor pagado por UPC Adicional'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label27: TLabel
              Left = 39
              Top = 12
              Width = 21
              Height = 11
              Caption = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 128
              Top = 12
              Width = 51
              Height = 11
              Caption = 'Valor UPC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 252
              Top = 12
              Width = 110
              Height = 11
              Caption = 'Cotizacion Obligatoria'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
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
            end
            object edtcotizacionobligatorio: TEdit
              Left = 257
              Top = 25
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
              TabOrder = 2
            end
          end
          object Agregar: TButton
            Left = 458
            Top = 103
            Width = 106
            Height = 45
            Caption = 'Agregar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ModalResult = 1
            ParentFont = False
            TabOrder = 3
          end
          object Button1: TButton
            Left = 603
            Top = 103
            Width = 118
            Height = 45
            Caption = 'Borrar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsItalic]
            ParentFont = False
            TabOrder = 4
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Consolidado'
        ImageIndex = 2
        object GroupBox3: TGroupBox
          Left = 16
          Top = 48
          Width = 742
          Height = 377
          Caption = 'Informacion del pago'
          TabOrder = 0
          OnEnter = GroupBox3Enter
          object GroupBox4: TGroupBox
            Left = 11
            Top = 43
            Width = 721
            Height = 93
            Caption = 'Informacion del Beneficiario Adicional'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label5: TLabel
              Left = 26
              Top = 20
              Width = 131
              Height = 14
              Caption = 'Total  Aportes Peridodo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 373
              Top = 19
              Width = 173
              Height = 14
              Caption = 'Aportes Mas Intereses deMora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 46
              Top = 45
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
            object Label9: TLabel
              Left = 336
              Top = 45
              Width = 210
              Height = 14
              Caption = 'Menos Saldo A Favor Periodo Anterior'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 53
              Top = 69
              Width = 102
              Height = 14
              Caption = 'Intereses de Mora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 474
              Top = 69
              Width = 72
              Height = 14
              Caption = 'Total A pagar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'GoudyOlSt BT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtvalupcpagar: TEdit
              Left = 165
              Top = 18
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              Color = cl3DLight
              Enabled = False
              TabOrder = 0
              OnKeyPress = edtplanillaKeyPress
            end
            object edtaporteinteteres: TEdit
              Left = 553
              Top = 15
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              Color = clScrollBar
              Enabled = False
              TabOrder = 1
              OnKeyPress = edtplanillaKeyPress
            end
            object edtnetoaportes: TEdit
              Left = 165
              Top = 42
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              Color = cl3DLight
              Enabled = False
              TabOrder = 2
              OnKeyPress = edtplanillaKeyPress
            end
            object edtsaldoanterior: TEdit
              Left = 552
              Top = 40
              Width = 89
              Height = 21
              Color = clMoneyGreen
              TabOrder = 3
              OnKeyPress = edtplanillaKeyPress
            end
            object edtintereses: TEdit
              Left = 165
              Top = 67
              Width = 90
              Height = 21
              Color = clMoneyGreen
              TabOrder = 4
              OnChange = edtinteresesChange
              OnExit = edtinteresesExit
              OnKeyPress = edtplanillaKeyPress
            end
            object edttotalpagado: TEdit
              Left = 553
              Top = 64
              Width = 89
              Height = 21
              Color = cl3DLight
              Enabled = False
              TabOrder = 5
              OnKeyPress = edtplanillaKeyPress
            end
          end
          object GroupBox11: TGroupBox
            Left = 11
            Top = 165
            Width = 515
            Height = 136
            Caption = 'PAGO DE AP'#210'RTES'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label21: TLabel
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
            object Label22: TLabel
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
            object Label23: TLabel
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
            object Label24: TLabel
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
            object cbbanco: TDBLookupComboBox
              Left = 15
              Top = 24
              Width = 144
              Height = 21
              Color = clMoneyGreen
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
              OnExit = cbbancoExit
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
              OnChange = edtvalefectivoChange
              OnExit = edtvalefectivoExit
            end
            object edtvalcheque: TEdit
              Left = 350
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
              OnChange = edtvalchequeChange
              OnEnter = edtvalchequeEnter
              OnExit = edtvalchequeExit
            end
            object edttotalconsignado: TEdit
              Left = 16
              Top = 110
              Width = 131
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
              TabOrder = 4
            end
            object sgdetabanco: TStringGrid
              Left = 160
              Top = 50
              Width = 344
              Height = 78
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
                56
                136
                124)
            end
          end
          object pbrgrabardetalle: TProgressBar
            Left = 10
            Top = 305
            Width = 723
            Height = 24
            TabOrder = 2
          end
          object EDTCONSECUTIVO: TEdit
            Left = 544
            Top = 243
            Width = 27
            Height = 21
            TabOrder = 3
            Visible = False
          end
          object EDTFECHARECAUDO: TEdit
            Left = 544
            Top = 273
            Width = 19
            Height = 21
            TabOrder = 4
            Visible = False
          end
          object btgrabarplanilla: TBitBtn
            Left = 594
            Top = 261
            Width = 121
            Height = 31
            Caption = '&Grabar'
            TabOrder = 5
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
          object GroupBox5: TGroupBox
            Left = 529
            Top = 169
            Width = 202
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
            TabOrder = 6
            object Label25: TLabel
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
        end
      end
    end
  end
end

object frmnoregistrados: Tfrmnoregistrados
  Left = 199
  Top = 108
  Width = 749
  Height = 450
  ActiveControl = EDTPERIODO
  BorderIcons = [biSystemMenu, biHelp]
  Caption = 'Modificacion de Usuarios No Registrados'
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
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 741
    Height = 151
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 279
      Top = 1
      Height = 149
      Align = alRight
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 278
      Height = 149
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 23
        Top = 1
        Width = 254
        Height = 147
        Hint = 'Dobleclik papa  Selecionar  el afiliado a  corregir'
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtsdetalleautoliquidaciones
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_PLANILLA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AFI_TIPO_DOC'
            Title.Caption = 'Tipo'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AFI_NUMERO_DOC'
            Title.Caption = 'Numero'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COT_OBLIGATORIA'
            Title.Caption = 'Valor Cotizacion'
            Width = 64
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 22
        Height = 147
        Align = alLeft
        BorderStyle = bsSingle
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 282
      Top = 1
      Width = 458
      Height = 149
      Align = alRight
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 1
        Top = 1
        Width = 436
        Height = 147
        Align = alClient
        Color = clMoneyGreen
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = StringGrid1Click
        ColWidths = (
          42
          81
          238
          45)
        RowHeights = (
          24
          24)
      end
      object Panel7: TPanel
        Left = 437
        Top = 1
        Width = 20
        Height = 147
        Align = alRight
        BorderStyle = bsSingle
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 264
    Width = 741
    Height = 159
    Align = alBottom
    TabOrder = 1
    object GroupBox5: TGroupBox
      Left = 234
      Top = 2
      Width = 509
      Height = 55
      Caption = 'Identificacion del Afiliado '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label23: TLabel
        Left = 194
        Top = 16
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
        Left = 372
        Top = 14
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
      object Label2: TLabel
        Left = 61
        Top = 15
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
      object Label3: TLabel
        Left = 8
        Top = 16
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
      object edtnombreafiliado: TEdit
        Left = 115
        Top = 29
        Width = 244
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
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 5
        Top = 29
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
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 33
        Top = 29
        Width = 81
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
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 360
        Top = 29
        Width = 147
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        KeyField = 'COD_MODALIDAD_TRA'
        ListField = 'NOM_MODALIDAD_TRA'
        ListSource = dtsmodalidadtrabajo
        TabOrder = 3
      end
    end
    object GroupBox6: TGroupBox
      Left = 15
      Top = 57
      Width = 714
      Height = 36
      Caption = 'Novedades Reportadas'
      Enabled = False
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
        Left = 615
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
      Left = 16
      Top = 92
      Width = 540
      Height = 50
      Caption = 'Detalle  de los Valorer  Cotizados'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label26: TLabel
        Left = 19
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
        Left = 70
        Top = 14
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
        Left = 176
        Top = 14
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
        Left = 316
        Top = 14
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
        Left = 416
        Top = 14
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
        Left = 15
        Top = 26
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
        Left = 52
        Top = 26
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
      object edtvalorneto: TEdit
        Left = 177
        Top = 26
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
      end
      object edtigresobasecotizacion: TEdit
        Left = 296
        Top = 26
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
      end
      object edtcotizacionobligatorio: TEdit
        Left = 419
        Top = 26
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
      end
    end
    object Button1: TButton
      Left = 584
      Top = 97
      Width = 101
      Height = 28
      Caption = 'Grabar Correcion'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 2
      Width = 221
      Height = 55
      Caption = 'Documento NRS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label38: TLabel
        Left = 93
        Top = 14
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
        Left = 150
        Top = 15
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
      object Label4: TLabel
        Left = 1
        Top = 14
        Width = 85
        Height = 14
        Caption = 'Numero Planilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 93
        Top = 29
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
      object edtnumeroducafiliado: TEdit
        Left = 127
        Top = 29
        Width = 88
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
      end
      object EDTPLANILLA: TEdit
        Left = 2
        Top = 29
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 113
    Align = alTop
    TabOrder = 2
    object Label47: TLabel
      Left = 199
      Top = 23
      Width = 286
      Height = 23
      Caption = 'USUARIOS NO REGISTRADOS'
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
      Left = 350
      Top = 72
      Width = 98
      Height = 13
      Caption = 'Periodo  Cotizado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 34
      Top = 100
      Width = 213
      Height = 13
      Caption = 'Usuarios  No  registrado en  el periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 432
      Top = 100
      Width = 203
      Height = 13
      Caption = 'Usuarios   no incluidos  en el periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = -143
      Top = 54
      Width = 844
      Height = 9
      TabOrder = 2
    end
    object EDTPERIODO: TMaskEdit
      Left = 455
      Top = 68
      Width = 64
      Height = 21
      Hint = 
        'Digite el periodo que  tiene  los  usuarios  no registrados para' +
        '  corregir'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /    '
      OnExit = EDTPERIODOExit
    end
    object BitBtn1: TBitBtn
      Left = 538
      Top = 64
      Width = 121
      Height = 31
      Caption = '&Consultar'
      TabOrder = 1
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
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
        FFFFFF0000000000000000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000DBDBDBDBFF93FF93930000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFF0000
        DBDBDBDBDBDBDBFF93FF939393939300006D6D6DFFFFFFFFFFFFFFFFFF009393
        DBDBDBDBDBDBDBFF93FF93939393939393006D6D6DFFFFFFFFFFFFFF00939393
        DBDBDBDBDBDBDBFF93FF9393939393939393006D6D6DFFFFFFFFFF0093939393
        DBDBDB00000000000000000093939393939393006D6D6DFFFFFF009393939393
        000000FFFFFFFFFFFFFFFFFF0000009393939393006D6DFFFFFF009393930000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000939393006D6D6DFFFF00939300FFFF
        FFFF00000000000000000000FFFFFFFFFF009393006D6D6DFFFF009300FFFFFF
        000093939393939393939393000000FFFFFF0093006D6D6D6DFF0000FFFFFF00
        93939393939393939393939393939300FFFFFF00006D6D6D6DFF00FFFFFF006E
        939393939393939393FFFFFF9393939300FFFFFF006D6D6D6DFF00FFFF009393
        6E9393939393939393939393FF93936E9300FFFF006D6D6DFFFF00FFFF009393
        936E6EDB9393939393939393FF6E6E939300FFFF006D6D6DFFFF00FFFF009393
        9393DBFFDB6E6E6E6E6E6E6E6E9393939300FFFF006D6DFFFFFF00FFFFFF0093
        939393DB93939393939393939393B69300FFFFFF006DFFFFFFFFFF00FFFFFF00
        93939393939393939393939393939300FFFFFF00FFFFFFFFFFFFFFFF00FFFFFF
        000000939393939393939393930000FFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFF00000000000000000000FFFFFFFF006D6DFFFFFFFFFFFFFFFFFFFF0000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000092006D6DFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFFFF0000DBDBDB92006D6DFFFFFFFFFFFFFFFFFFFF
        FFFFFF00000000000000000000DBFFFFDBDBDB00006D6DFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00DBFFFFDB000000006D6DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000006D6DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006D6DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000006DFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D2400000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D24000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00246D240000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dtsdetalleautoliquidaciones: TDataSource
    DataSet = DataModule1.qrydetalle
    Left = 470
    Top = 30
  end
  object dtsmodalidadtrabajo: TDataSource
    DataSet = qrymodalidadtrabajo
    Left = 578
    Top = 32
  end
  object qrymodalidadtrabajo: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from modalidad_trabajos')
    Left = 536
    Top = 32
    object qrymodalidadtrabajoCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrymodalidadtrabajoNOM_MODALIDAD_TRA: TStringField
      FieldName = 'NOM_MODALIDAD_TRA'
      Size = 50
    end
    object qrymodalidadtrabajoSALARIOS_MINIMOS: TBCDField
      FieldName = 'SALARIOS_MINIMOS'
      Precision = 5
      Size = 2
    end
    object qrymodalidadtrabajoPOR_COTIZACION: TFloatField
      FieldName = 'POR_COTIZACION'
    end
  end
  object qrydetalleplanilla: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    Parameters = <>
    Left = 496
    Top = 32
  end
end

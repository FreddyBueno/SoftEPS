object frmautoliquidacion: Tfrmautoliquidacion
  Left = 39
  Top = 118
  Width = 648
  Height = 479
  Align = alClient
  Caption = 'Ingreso de Autoliquidaciones'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 83
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 129
      Top = 13
      Width = 108
      Height = 13
      Caption = 'Numero de documento'
    end
    object Label5: TLabel
      Left = 150
      Top = 102
      Width = 85
      Height = 13
      Caption = 'emp_numero_doc'
    end
    object Label6: TLabel
      Left = 150
      Top = 142
      Width = 63
      Height = 13
      Caption = 'cod_sucursal'
    end
    object lbfechapago: TLabel
      Left = 226
      Top = 46
      Width = 58
      Height = 13
      Caption = 'Fecha Pago'
    end
    object Label1: TLabel
      Left = 304
      Top = 46
      Width = 100
      Height = 13
      Caption = 'Periodo compensado'
    end
    object Label3: TLabel
      Left = 411
      Top = 47
      Width = 101
      Height = 13
      Caption = 'Periodo de  correcion'
    end
    object Label4: TLabel
      Left = 324
      Top = 12
      Width = 63
      Height = 13
      Caption = 'Razon Social'
    end
    object Label21: TLabel
      Left = 428
      Top = 4
      Width = 88
      Height = 13
      Caption = 'Numero de Planilla'
    end
    object Label37: TLabel
      Left = 21
      Top = 14
      Width = 97
      Height = 13
      Caption = 'Tipo de  Documento'
    end
    object edtplanilla: TEdit
      Left = 524
      Top = 4
      Width = 110
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtplanillaChange
      OnExit = edtplanillaExit
    end
    object ednumero: TEdit
      Left = 131
      Top = 26
      Width = 100
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 1
      OnClick = ednumeroClick
      OnDblClick = ednumeroDblClick
    end
    object dtfechapago: TDateTimePicker
      Left = 223
      Top = 60
      Width = 87
      Height = 21
      Date = 37214.623860763900000000
      Format = 'dd/MM/yyyy'
      Time = 37214.623860763900000000
      TabOrder = 2
      OnExit = cbtipodeclaracionExit
    end
    object edtperiodo: TEdit
      Left = 322
      Top = 58
      Width = 67
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 3
    end
    object edtcorrecionplanilla: TEdit
      Left = 420
      Top = 59
      Width = 85
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 4
    end
    object edtnombreempresa: TEdit
      Left = 233
      Top = 26
      Width = 402
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object cbtipodocempresa: TComboBox
      Left = 22
      Top = 25
      Width = 96
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      MaxLength = 3
      TabOrder = 6
      Text = 'NIT'
      Items.Strings = (
        'CC'
        'NIT'
        'CE'
        'TI')
    end
    object cbtipodeclaracion: TComboBox
      Left = 21
      Top = 56
      Width = 193
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      MaxLength = 1
      TabOrder = 7
      Text = 'Declaracion'
      OnExit = cbtipodeclaracionExit
      Items.Strings = (
        'Declaracion'
        'Adicion'
        'Correccion')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 83
    Width = 640
    Height = 83
    Align = alClient
    TabOrder = 1
    object sgdetalle: TStringGrid
      Left = 1
      Top = 1
      Width = 638
      Height = 81
      Align = alClient
      Color = clBtnHighlight
      ColCount = 10
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goRowMoving, goColMoving, goTabs]
      TabOrder = 0
      ColWidths = (
        27
        155
        65
        107
        98
        64
        64
        64
        64
        64)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 280
    Width = 640
    Height = 148
    Align = alBottom
    TabOrder = 2
    object Label7: TLabel
      Left = 96
      Top = 3
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Planilla'
    end
    object Label8: TLabel
      Left = 43
      Top = 20
      Width = 114
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Aporte del Periodo'
    end
    object Label9: TLabel
      Left = 20
      Top = 40
      Width = 138
      Height = 13
      Alignment = taRightJustify
      Caption = 'Menos Incapacidades Pagas'
    end
    object Label10: TLabel
      Left = 13
      Top = 60
      Width = 143
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Licencias de Maternidad'
    end
    object Label11: TLabel
      Left = 52
      Top = 79
      Width = 104
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Neto de Aportes'
    end
    object Label12: TLabel
      Left = 366
      Top = 5
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Intereses de Mora'
    end
    object Label13: TLabel
      Left = 306
      Top = 26
      Width = 145
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aportes mas intereses de Mora'
    end
    object Label14: TLabel
      Left = 297
      Top = 43
      Width = 155
      Height = 13
      Alignment = taRightJustify
      Caption = 'Menos  Saldo a Favor p. Anterior'
    end
    object Label15: TLabel
      Left = 306
      Top = 48
      Width = 3
      Height = 13
    end
    object Label16: TLabel
      Left = 334
      Top = 83
      Width = 116
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Pagado  la  planilla'
    end
    object Label17: TLabel
      Left = 12
      Top = 102
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label18: TLabel
      Left = 71
      Top = 102
      Width = 74
      Height = 13
      Caption = 'Numero Cuenta'
    end
    object Label19: TLabel
      Left = 188
      Top = 103
      Width = 62
      Height = 13
      Caption = 'Valor Fectivo'
    end
    object Label20: TLabel
      Left = 328
      Top = 102
      Width = 63
      Height = 13
      Caption = 'valor Cheque'
    end
    object Label24: TLabel
      Left = 319
      Top = 63
      Width = 132
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total pagado UPC Adiconal'
    end
    object Button2: TButton
      Left = 474
      Top = 110
      Width = 83
      Height = 23
      Caption = '&Grabar Planilla'
      TabOrder = 0
    end
    object edtincapacidad: TEdit
      Left = 168
      Top = 40
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 1
    end
    object edttotalplanilla: TEdit
      Left = 168
      Top = 1
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 2
    end
    object edttotalaporte: TEdit
      Left = 168
      Top = 21
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 3
    end
    object edtlicencia: TEdit
      Left = 168
      Top = 59
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 4
    end
    object edtnetoaportes: TEdit
      Left = 168
      Top = 78
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 5
    end
    object edtintereses: TEdit
      Left = 461
      Top = 3
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 6
    end
    object edtaporteinteteres: TEdit
      Left = 461
      Top = 24
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 7
    end
    object edtsaldoanterior: TEdit
      Left = 461
      Top = 43
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 8
    end
    object edtupc: TEdit
      Left = 461
      Top = 63
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 9
    end
    object edttotalpagado: TEdit
      Left = 461
      Top = 83
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 10
    end
    object Edit13: TEdit
      Left = 10
      Top = 119
      Width = 45
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 11
      Text = 'EDIT13'
    end
    object Edit14: TEdit
      Left = 55
      Top = 119
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 12
      Text = 'EDIT14'
    end
    object Edit15: TEdit
      Left = 179
      Top = 119
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 13
      Text = 'EDIT15'
    end
    object Edit16: TEdit
      Left = 303
      Top = 119
      Width = 125
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 14
      Text = 'EDIT16'
    end
  end
  object sbestado: TStatusBar
    Left = 0
    Top = 428
    Width = 640
    Height = 24
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Width = 300
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object panel4: TPanel
    Left = 0
    Top = 166
    Width = 640
    Height = 114
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 4
    object Label22: TLabel
      Left = 134
      Top = 1
      Width = 92
      Height = 13
      Caption = 'Documento Afiliado'
    end
    object Label23: TLabel
      Left = 322
      Top = 2
      Width = 94
      Height = 13
      Caption = 'Nombre  del usuario'
    end
    object Label25: TLabel
      Left = 12
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Novedad'
    end
    object Label26: TLabel
      Left = 68
      Top = 35
      Width = 70
      Height = 13
      Caption = 'Dias Cotizados'
    end
    object Label27: TLabel
      Left = 173
      Top = 35
      Width = 67
      Height = 13
      Caption = 'Salario Basico'
    end
    object Label28: TLabel
      Left = 292
      Top = 36
      Width = 97
      Height = 13
      Caption = 'Valor Neto Novedad'
    end
    object Label29: TLabel
      Left = 408
      Top = 35
      Width = 117
      Height = 13
      Caption = 'Ingreso  Base Cotizacion'
    end
    object Label30: TLabel
      Left = 532
      Top = 35
      Width = 102
      Height = 13
      Caption = 'Cotizacion Obligatoria'
    end
    object Label31: TLabel
      Left = 132
      Top = 78
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label32: TLabel
      Left = 14
      Top = 77
      Width = 78
      Height = 13
      Caption = 'No. Autorizacion'
    end
    object Label33: TLabel
      Left = 38
      Top = 67
      Width = 120
      Height = 13
      Caption = 'Incapacidad Descontada'
    end
    object Label34: TLabel
      Left = 196
      Top = 77
      Width = 75
      Height = 13
      Caption = 'No Autorizacion'
    end
    object Label35: TLabel
      Left = 309
      Top = 77
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label36: TLabel
      Left = 202
      Top = 67
      Width = 160
      Height = 13
      Caption = 'Licencia Maternidad  Descontada'
    end
    object Label38: TLabel
      Left = 18
      Top = 0
      Width = 94
      Height = 13
      Caption = 'Tipo de Documento'
    end
    object Label39: TLabel
      Left = 402
      Top = 74
      Width = 64
      Height = 13
      Caption = 'Valor Pagado'
    end
    object edtnumeroducafiliado: TEdit
      Left = 121
      Top = 14
      Width = 117
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = edtnumeroducafiliadoClick
      OnDblClick = edtnumeroducafiliadoDblClick
    end
    object edtnombreafiliado: TEdit
      Left = 244
      Top = 13
      Width = 391
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object cbnovedad: TComboBox
      Left = 18
      Top = 48
      Width = 53
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      Style = csDropDownList
      CharCase = ecUpperCase
      Color = clWhite
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'ING'
        'RET'
        'TAA'
        'VSP'
        'VST'
        'SLN'
        'IGE'
        'LMA'
        'VAC')
    end
    object eddias: TEdit
      Left = 89
      Top = 46
      Width = 27
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      OEMConvert = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = eddiasEnter
    end
    object edtsalariobase: TEdit
      Left = 150
      Top = 46
      Width = 119
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = edtsalariobaseExit
    end
    object edtvalorneto: TEdit
      Left = 279
      Top = 47
      Width = 123
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object edtigresobasecotizacion: TEdit
      Left = 412
      Top = 47
      Width = 116
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnExit = edtigresobasecotizacionExit
    end
    object edtcotizacionobligatorio: TEdit
      Left = 533
      Top = 47
      Width = 102
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object Agregar: TButton
      Left = 512
      Top = 87
      Width = 61
      Height = 16
      Caption = 'Agregar'
      TabOrder = 8
      OnClick = AgregarClick
    end
    object edtvalincapacidad: TEdit
      Left = 98
      Top = 89
      Width = 91
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object edtvallicencia: TEdit
      Left = 281
      Top = 90
      Width = 95
      Height = 21
      BevelInner = bvSpace
      BevelOuter = bvSpace
      CharCase = ecUpperCase
      Color = clWhite
      OEMConvert = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object Button1: TButton
      Left = 580
      Top = 87
      Width = 56
      Height = 16
      Caption = 'Borrar'
      TabOrder = 11
      OnClick = Button1Click
    end
    object cbtipodocafiliado: TComboBox
      Left = 18
      Top = 12
      Width = 96
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'CC'
      Items.Strings = (
        'CC'
        'NIT'
        'CE'
        'TI')
    end
    object edtautincapacidad: TEdit
      Left = 12
      Top = 90
      Width = 82
      Height = 21
      TabOrder = 13
    end
    object edtnoautlicencia: TEdit
      Left = 194
      Top = 90
      Width = 83
      Height = 21
      TabOrder = 14
    end
    object edttotalpagadoafiliado: TEdit
      Left = 378
      Top = 89
      Width = 130
      Height = 21
      TabOrder = 15
    end
  end
  object PopupMenu1: TPopupMenu
    Images = frmprincipal.Imgprincipal
    Left = 640
    Top = 366
    object BuscarAfiliado1: TMenuItem
      Caption = 'Buscar Afiliado'
      OnClick = BuscarAfiliado1Click
    end
  end
end

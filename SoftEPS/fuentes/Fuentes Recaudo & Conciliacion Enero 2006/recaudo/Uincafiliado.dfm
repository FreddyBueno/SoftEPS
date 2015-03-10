object frmincaporusuario: Tfrmincaporusuario
  Left = 205
  Top = 179
  Width = 756
  Height = 480
  ActiveControl = cbtipo
  Caption = 'C0NSULTA  DE  INCAPACIDADES  POR USUARIO'
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
  WindowState = wsMinimized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 748
    Height = 149
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 746
      Height = 147
      Align = alClient
      Color = clMoneyGreen
      DataSource = dtsencainc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_INCAPACIDAD'
          Title.Caption = 'Numero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIP_INCAPACIDAD'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIP_DOCEMPRESA'
          Title.Caption = 'Tipo Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_DOCEMPRESA'
          Title.Caption = 'Numero Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FEC_INICIO'
          Title.Caption = 'Fecha Inicio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SAL_BASE'
          Title.Caption = 'Salario Base'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_SALARIO_LIQUI'
          Title.Caption = 'Salario Promedio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIA_INCAPACIDAD'
          Title.Caption = 'Dias Incapacidad'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIA_LIQUIDADOS'
          Title.Caption = 'Dias Liquidados'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VAL_INCAPACIDAD'
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FEC_TERMINACION'
          Title.Caption = 'Final '
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_INCAPACIDAD'
          Title.Caption = 'Prorroga'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NO_PRORROGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Caption = 'No Prorroga'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 113
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 69
      Width = 24
      Height = 13
      Caption = 'Tipo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 69
      Width = 93
      Height = 13
      Caption = 'Numero documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 254
      Top = 69
      Width = 91
      Height = 13
      Caption = 'Nombre del usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 474
      Top = 69
      Width = 87
      Height = 13
      Caption = 'Estado del usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 142
      Top = 37
      Width = 464
      Height = 23
      Caption = 'C0NSULTA  DE  INCAPACIDADES  POR USUARIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 665
      Top = 8
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
    object Label6: TLabel
      Left = 572
      Top = 69
      Width = 69
      Height = 13
      Caption = 'Saldo  a Favor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbtipo: TComboBox
      Left = 12
      Top = 84
      Width = 48
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      CharCase = ecUpperCase
      Color = clMoneyGreen
      ItemHeight = 13
      TabOrder = 0
      OnExit = cbtipoExit
      Items.Strings = (
        'CC'
        'TI'
        'CE'
        'NIT'
        'NUP')
    end
    object edtnumero: TEdit
      Left = 68
      Top = 84
      Width = 101
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = edtnumeroExit
    end
    object edtnombre: TEdit
      Left = 177
      Top = 84
      Width = 294
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 2
    end
    object cbestado: TComboBox
      Left = 474
      Top = 84
      Width = 93
      Height = 21
      Style = csDropDownList
      Color = clMoneyGreen
      Enabled = False
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Activo'
        'Suspendido'
        'Inactivo')
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 60
      Width = 772
      Height = 8
      TabOrder = 4
    end
    object btnbuscar: TBitBtn
      Left = 661
      Top = 74
      Width = 85
      Height = 39
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = btnbuscarClick
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
    object Edtsaldo: TEdit
      Left = 570
      Top = 84
      Width = 85
      Height = 21
      Color = clMoneyGreen
      ReadOnly = True
      TabOrder = 6
      OnExit = edtnumeroExit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 262
    Width = 748
    Height = 191
    Align = alBottom
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 746
      Height = 189
      Align = alClient
      Color = clMoneyGreen
      DataSource = dtsdetalleinc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object dtsdetalleinc: TDataSource
    DataSet = DataModule1.qrydetincapacidad
    Left = 8
    Top = 4
  end
  object dtsencainc: TDataSource
    DataSet = DataModule1.qryincapacidades
    Left = 64
    Top = 4
  end
  object qryafiliados: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from afiliados')
    Left = 114
    Top = 3
    object qryafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryafiliadosCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qryafiliadosCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qryafiliadosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadosCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Size = 1
    end
    object qryafiliadosCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Size = 3
    end
    object qryafiliadosCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Size = 3
    end
    object qryafiliadosCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Size = 3
    end
    object qryafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryafiliadosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 25
    end
    object qryafiliadosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 25
    end
    object qryafiliadosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 25
    end
    object qryafiliadosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 25
    end
    object qryafiliadosFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qryafiliadosFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
    end
    object qryafiliadosFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object qryafiliadosEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Size = 3
    end
    object qryafiliadosEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object qryafiliadosCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryafiliadosCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object qryafiliadosCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Size = 3
    end
    object qryafiliadosCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryafiliadosACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Size = 3
    end
    object qryafiliadosACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Size = 18
    end
    object qryafiliadosCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Size = 1
    end
    object qryafiliadosNUM_SEMANA_COTIZA: TBCDField
      FieldName = 'NUM_SEMANA_COTIZA'
      Precision = 32
      Size = 0
    end
    object qryafiliadosFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
    end
    object qryafiliadosNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryafiliadosDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Size = 50
    end
    object qryafiliadosTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
    end
    object qryafiliadosTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
    end
    object qryafiliadosCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
    end
    object qryafiliadosEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Size = 50
    end
    object qryafiliadosFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object qryafiliadosTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryafiliadosTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryafiliadosTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryafiliadosSEM_COTIZACION: TBCDField
      FieldName = 'SEM_COTIZACION'
      Precision = 32
      Size = 0
    end
  end
  object qryincapacidades2: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'NUM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SUM(VAL_PAGAR_INCAP) AS VALORSALDO FROM DET_INCAPACIDAD'
      
        'WHERE (NUM_INCAPACIDAD= :'#39'NUM'#39') AND (EST_DET_PLANILLA IS NULL OR' +
        ' EST_DET_PLANILLA='#39#39') ')
    Left = 152
    Top = 3
    object qryincapacidades2VALORSALDO: TBCDField
      FieldName = 'VALORSALDO'
      Precision = 32
      Size = 0
    end
  end
end

object FRMCONSULTAS_NOTAS: TFRMCONSULTAS_NOTAS
  Left = 221
  Top = 132
  Width = 774
  Height = 530
  ActiveControl = cbtipo
  Caption = 'Consultar Pagos de las   Empresas'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 108
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 66
      Width = 31
      Height = 16
      Caption = 'Tipo '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 65
      Width = 118
      Height = 16
      Caption = 'Numero documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 254
      Top = 67
      Width = 145
      Height = 16
      Caption = 'Nombre de  la  empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 170
      Top = 29
      Width = 341
      Height = 23
      Caption = 'CONSULTA  NOTAS POR EMPRESAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 573
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
    object Label9: TLabel
      Left = 576
      Top = 65
      Width = 85
      Height = 16
      Caption = 'Saldo a Favor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtnumero: TEdit
      Left = 87
      Top = 81
      Width = 106
      Height = 21
      Color = clMoneyGreen
      TabOrder = 1
      OnExit = edtnumeroExit
    end
    object edtnombre: TEdit
      Left = 199
      Top = 81
      Width = 357
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 2
    end
    object cbtipo: TComboBox
      Left = 14
      Top = 81
      Width = 65
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
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
    object GroupBox1: TGroupBox
      Left = -91
      Top = 60
      Width = 846
      Height = 8
      TabOrder = 3
    end
    object btnbuscar: TBitBtn
      Left = 676
      Top = 69
      Width = 89
      Height = 37
      Caption = 'Buscar'
      TabOrder = 4
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
      Left = 563
      Top = 81
      Width = 106
      Height = 21
      Color = clMoneyGreen
      ReadOnly = True
      TabOrder = 5
      OnExit = edtnumeroExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 108
    Width = 686
    Height = 395
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 684
      Height = 393
      Align = alClient
      TabOrder = 0
      object Label4: TLabel
        Left = 4
        Top = 3
        Width = 174
        Height = 16
        Caption = 'Incapacidades Descontadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 0
        Top = 131
        Width = 195
        Height = 16
        Caption = 'Incapacidades No Descontadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 6
        Top = 259
        Width = 82
        Height = 16
        Caption = 'Notas Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 342
        Top = 259
        Width = 79
        Height = 16
        Caption = 'Notas D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 17
        Width = 682
        Height = 110
        Color = clMoneyGreen
        DataSource = dsqconsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_INCAPACIDAD'
            Title.Caption = 'N'#250'mero Incapacidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_PAGAR_INCAP'
            Title.Caption = 'Valor  Incapacidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_MOVIMIENTO'
            Title.Caption = 'Movimiento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PLANILLA'
            Title.Caption = 'Numero de Planilla'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_DOC_EMPRESA'
            Title.Caption = 'Tip Empresa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_DOC_EMPRESA'
            Title.Caption = 'Doc Empresa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_NOTA'
            Title.Caption = 'Tipo Nota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_NOTA'
            Title.Caption = 'Valor Nota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 147
        Width = 682
        Height = 110
        Color = clMoneyGreen
        DataSource = DSQINCAPNODES
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_INCAPACIDAD'
            Title.Caption = 'N'#250'mero Incapacidad'
            Title.Color = cl3DLight
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AFI_TIPO_DOC'
            Title.Caption = 'Tip Afiliado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AFI_NUMERO_DOC'
            Title.Caption = 'Doc Afiliado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PER_PAGO_INCAP'
            Title.Caption = 'Periodo Pago'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIA_PAGAR_INCAP'
            Title.Caption = 'Dias Incapacidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_PAGAR_INCAP'
            Title.Caption = 'Valor por Pagar'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 92
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 2
        Top = 273
        Width = 333
        Height = 110
        Color = clMoneyGreen
        DataSource = DSQNOTASC
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_PLANILLA'
            Title.Caption = 'N'#250'mero de Planilla'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_NOTA'
            Title.Caption = 'Valor Nota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_MOVIMIENTO'
            Title.Caption = 'Tipo Movimiento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_INCAPACIDAD'
            Title.Caption = 'No. Incapacidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 342
        Top = 273
        Width = 319
        Height = 110
        Color = clMoneyGreen
        DataSource = DSQNOTASD
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_PLANILLA'
            Title.Caption = 'N'#250'mero de Planilla'
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
            FieldName = 'Valor Nota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo Movimiento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_INCAPACIDAD'
            Title.Caption = 'No. Incapacidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 686
    Top = 108
    Width = 80
    Height = 395
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 8
      Top = 86
      Width = 64
      Height = 149
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000DFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF00000000000000000000000000000000000000
        00003F3F007F7F007F7F007F7F00505050BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF
        0000000000000000000000000000003F3F00FFFF3FFFFF7FFFFF005F5F208080
        80808080BFBFBFDFDFDFDFDFDFDFDFDFAFAFAF0000000000000000003F3F00FF
        FF3FFFFFBFFFFF005F5F20808080808080808080909090BFBFBFDFDFDFDFDFDF
        DFDFDFAFAFAF0000003F3F00FFFF3FFFFFBFFFFF003F3F008080808080808080
        80808080808080808080DFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFF
        FF003F3F00000000AFAFAFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F00000000000000000000AFAFAFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00FFFF3FFFFFBFFFFF003F3F0000
        0000000000000000000000000000AFAFAFDFDFDFDFDFDFDFDFDF9F9F9F3F3F00
        FFFF00FFFF7FFFFF003F3F009F9F9F9F9F9F0000000000000000000000000000
        00AFAFAFDFDFDFDFDFDF0000000000000000000000000000009F9F9FDFDFDFDF
        DFDF9F9F9F000000000000000000000000000000DFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFAFAFDFDFDF
        CFAFAFCFAFAFDFDFDFBF7F7FCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFBF7F7FDFDF
        DFCFAFAFCFAFAFDFDFDFAF6F6FDFDFDFAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF
        6F6FAF6F6FCFAFAFBF9F9FAF6F6FAF6F6FAF6F6FAF6F6FDFDFDFAF6F6FAF6F6F
        9F3F3FBF9F9FDFDFDFA06060BF9F9FBF9F9FA06060BF9F9FBF9F9FBF9F9FA060
        60903030903030BF9F9FBF9F9FDFDFDFBF9F9FBF9F9FDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFBF9F9FBF9F9FDFDFDF}
      Layout = blGlyphTop
    end
  end
  object dsqconsulta: TDataSource
    DataSet = qrynotas
    Left = 38
    Top = 12
  end
  object opguardar: TSaveDialog
    Left = 4
    Top = 6
  end
  object qryempresas: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT *  FROM  EMPRESAS  WHERE TIP_DOCUMENTO = :"TIPO" AND NUM_' +
        'DOCUMENTO = :"NUMERO"')
    Left = 67
    Top = 11
    object qryempresasTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qryempresasCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qryempresasCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qryempresasCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qryempresasCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qryempresasCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 3
    end
    object qryempresasTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qryempresasCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qryempresasCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qryempresasTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Size = 1
    end
    object qryempresasNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
    object qryempresasFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
    end
    object qryempresasDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Size = 50
    end
    object qryempresasTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
    end
    object qryempresasTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
    end
    object qryempresasURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
    end
    object qryempresasEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Size = 50
    end
    object qryempresasTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Size = 10
    end
    object qryempresasCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Size = 1
    end
    object qryempresasCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qryempresasCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qryempresasCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Size = 3
    end
    object qryempresasCOD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Size = 1
    end
    object qryempresasCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Size = 1
    end
    object qryempresasTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qryempresasNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Size = 18
    end
  end
  object qrynotas: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT T1.NUM_INCAPACIDAD,T1.VAL_PAGAR_INCAP,T3.TIP_MOVIMIENTO, '
      
        'T2.NUM_PLANILLA, T2.TIP_DOC_EMPRESA, T2.NUM_DOC_EMPRESA, T2.TIP_' +
        'NOTA, T2.VAL_NOTA '
      
        'FROM DET_INCAPACIDAD T1, NOTAS_AUTOLIQUIDACION T2, EST_BANCARIO_' +
        'AUTO T3 '
      'WHERE T1.NUM_COMPROBANTE=T2.NUM_PLANILLA AND T2.TIP_NOTA= '#39'C'#39' '
      'AND TIP_DOC_EMPRESA= :'#39'TIP'#39' AND NUM_DOC_EMPRESA= :'#39'DOC'#39
      
        'AND T1.EST_DET_PLANILLA='#39'DES'#39'AND T1.NUM_COMPROBANTE=T3.NUM_PLANI' +
        'LLA')
    Left = 103
    Top = 7
    object qrynotasNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qrynotasVAL_PAGAR_INCAP: TBCDField
      FieldName = 'VAL_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qrynotasTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
    end
    object qrynotasNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynotasTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotasNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotasTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotasVAL_NOTA: TBCDField
      FieldName = 'VAL_NOTA'
      Precision = 18
      Size = 0
    end
  end
  object qryincapacidadesnodes: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    T1.*,  T2.AFI_TIPO_DOC,T2.AFI_NUMERO_DOC'
      'FROM DET_INCAPACIDAD T1, INCAPACIDADES T2'
      'WHERE T2.TIP_DOCEMPRESA= :'#39'TIP'#39' AND T2.NUM_DOCEMPRESA= :'#39'DOC'#39
      'AND T2.NUM_INCAPACIDAD=T1.NUM_INCAPACIDAD'
      'AND (T1.EST_DET_PLANILLA IS NULL OR T1.EST_DET_PLANILLA='#39#39')')
    Left = 145
    Top = 5
    object qryincapacidadesnodesNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qryincapacidadesnodesPER_PAGO_INCAP: TDateTimeField
      FieldName = 'PER_PAGO_INCAP'
    end
    object qryincapacidadesnodesNUM_COMPROBANTE: TStringField
      FieldName = 'NUM_COMPROBANTE'
      Size = 15
    end
    object qryincapacidadesnodesDIA_PAGAR_INCAP: TBCDField
      FieldName = 'DIA_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesnodesVAL_PAGAR_INCAP: TBCDField
      FieldName = 'VAL_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesnodesTIP_PAGO_INCAP: TStringField
      FieldName = 'TIP_PAGO_INCAP'
      Size = 1
    end
    object qryincapacidadesnodesFEC_PAGO_INCAP: TDateTimeField
      FieldName = 'FEC_PAGO_INCAP'
    end
    object qryincapacidadesnodesPER_PRESENTADO: TStringField
      FieldName = 'PER_PRESENTADO'
      Size = 7
    end
    object qryincapacidadesnodesEST_DET_PLANILLA: TStringField
      FieldName = 'EST_DET_PLANILLA'
      Size = 3
    end
    object qryincapacidadesnodesVAL_DESCONTADO: TBCDField
      FieldName = 'VAL_DESCONTADO'
      Precision = 18
      Size = 0
    end
    object qryincapacidadesnodesAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qryincapacidadesnodesAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
  end
  object DSQINCAPNODES: TDataSource
    DataSet = qryincapacidadesnodes
    Left = 180
    Top = 6
  end
  object qrynotascredito: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT T1.*, T2.TIP_MOVIMIENTO, T3.NUM_INCAPACIDAD FROM NOTAS_AU' +
        'TOLIQUIDACION  T1, EST_BANCARIO_AUTO T2, DET_INCAPACIDAD T3'
      
        'WHERE T1.TIP_NOTA = '#39'C'#39' and T1.TIP_DOC_EMPRESA = :'#39'TIP'#39'  and T1.' +
        'NUM_DOC_EMPRESA = :'#39'DOC'#39
      
        'AND T1.NUM_COMP_DES IS NULL AND T2.NUM_PLANILLA=T1.NUM_PLANILLA ' +
        'AND T1.NUM_PLANILLA*=T3.NUM_COMPROBANTE'
      '')
    Left = 225
    Top = 7
    object qrynotascreditoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynotascreditoTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotascreditoNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotascreditoTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotascreditoVAL_NOTA: TBCDField
      FieldName = 'VAL_NOTA'
      Precision = 18
      Size = 0
    end
    object qrynotascreditoNUM_COMP_DES: TStringField
      FieldName = 'NUM_COMP_DES'
      Size = 15
    end
    object qrynotascreditoFEC_DESCUENTO: TDateTimeField
      FieldName = 'FEC_DESCUENTO'
    end
    object qrynotascreditoTIP_DESCUENTO: TStringField
      FieldName = 'TIP_DESCUENTO'
      Size = 1
    end
    object qrynotascreditoTIP_NOTA2: TStringField
      FieldName = 'TIP_NOTA2'
      FixedChar = True
      Size = 1
    end
    object qrynotascreditoTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
    end
    object qrynotascreditoNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
  end
  object DSQNOTASC: TDataSource
    DataSet = qrynotascredito
    Left = 262
    Top = 6
  end
  object DSQNOTASD: TDataSource
    DataSet = qrynotasdebito
    Left = 330
    Top = 8
  end
  object qrynotasdebito: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT T1.*, T2.TIP_MOVIMIENTO,T3.NUM_INCAPACIDAD FROM NOTAS_AUT' +
        'OLIQUIDACION  T1, EST_BANCARIO_AUTO T2, DET_INCAPACIDAD T3'
      
        'WHERE T1.TIP_NOTA = '#39'D'#39' and T1.TIP_DOC_EMPRESA = :'#39'TIP'#39'  and T1.' +
        'NUM_DOC_EMPRESA = :'#39'DOC'#39
      
        'AND T1.NUM_COMP_DES IS NULL AND T2.NUM_PLANILLA=T1.NUM_PLANILLA ' +
        'AND T1.NUM_PLANILLA*=T3.NUM_COMPROBANTE'
      '')
    Left = 295
    Top = 9
    object qrynotasdebitoNUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Size = 15
    end
    object qrynotasdebitoTIP_DOC_EMPRESA: TStringField
      FieldName = 'TIP_DOC_EMPRESA'
      Size = 3
    end
    object qrynotasdebitoNUM_DOC_EMPRESA: TStringField
      FieldName = 'NUM_DOC_EMPRESA'
      Size = 18
    end
    object qrynotasdebitoTIP_NOTA: TStringField
      FieldName = 'TIP_NOTA'
      FixedChar = True
      Size = 1
    end
    object qrynotasdebitoVAL_NOTA: TBCDField
      FieldName = 'VAL_NOTA'
      Precision = 18
      Size = 0
    end
    object qrynotasdebitoNUM_COMP_DES: TStringField
      FieldName = 'NUM_COMP_DES'
      Size = 15
    end
    object qrynotasdebitoFEC_DESCUENTO: TDateTimeField
      FieldName = 'FEC_DESCUENTO'
    end
    object qrynotasdebitoTIP_DESCUENTO: TStringField
      FieldName = 'TIP_DESCUENTO'
      Size = 1
    end
    object qrynotasdebitoTIP_NOTA2: TStringField
      FieldName = 'TIP_NOTA2'
      FixedChar = True
      Size = 1
    end
    object qrynotasdebitoTIP_MOVIMIENTO: TStringField
      FieldName = 'TIP_MOVIMIENTO'
    end
    object qrynotasdebitoNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
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
    Left = 142
    Top = 39
    object qryincapacidades2VALORSALDO: TBCDField
      FieldName = 'VALORSALDO'
      Precision = 32
      Size = 0
    end
  end
  object qrynotascredito2: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(VAL_NOTA) as VALNOTACREDITO FROM NOTAS_AUTOLIQUIDACIO' +
        'N  WHERE TIP_NOTA = '#39'C'#39' and TIP_DOC_EMPRESA = :'#39'TIP'#39'  and NUM_DO' +
        'C_EMPRESA = :'#39'DOC'#39' AND NUM_COMP_DES IS NULL'
      '')
    Left = 225
    Top = 39
    object qrynotascredito2VALNOTACREDITO: TBCDField
      FieldName = 'VALNOTACREDITO'
      Precision = 32
      Size = 0
    end
  end
  object qrynotasdebito2: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TIP'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SUM(VAL_NOTA) as VALNOTADEBITO FROM NOTAS_AUTOLIQUIDACION' +
        '  WHERE TIP_NOTA = '#39'D'#39' and TIP_DOC_EMPRESA = :'#39'TIP'#39'  and NUM_DOC' +
        '_EMPRESA = :'#39'DOC'#39' AND NUM_COMP_DES IS NULL'
      '')
    Left = 293
    Top = 43
    object qrynotasdebito2VALNOTADEBITO: TBCDField
      FieldName = 'VALNOTADEBITO'
      Precision = 32
      Size = 0
    end
  end
end

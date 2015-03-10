object frmcambio_empresas: Tfrmcambio_empresas
  Left = 3
  Top = 98
  Width = 797
  Height = 474
  Caption = 'frmcambio_empresas'
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
    Width = 789
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 789
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label26: TLabel
        Left = 214
        Top = 36
        Width = 384
        Height = 23
        Caption = 'RELACION DE LOS AFILIADOS ACTIVOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 707
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
      object DBNavigator: TDBNavigator
        Left = 312
        Top = 12
        Width = 240
        Height = 25
        DataSource = dsafiliados
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
      end
      object GroupBox16: TGroupBox
        Left = 8
        Top = 57
        Width = 779
        Height = 7
        TabOrder = 2
      end
      object gbdocumentos: TGroupBox
        Left = 8
        Top = 64
        Width = 371
        Height = 49
        Caption = 'Indentificacion del Cotizante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 26
          Height = 13
          Caption = 'Tipo'
        end
        object Label8: TLabel
          Left = 93
          Top = 22
          Width = 44
          Height = 13
          Caption = 'Numero'
        end
        object dbltipos: TDBLookupComboBox
          Left = 39
          Top = 18
          Width = 49
          Height = 21
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'tip_documento'
          ListField = 'tip_documento'
          ListSource = dstipos_documentos
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 145
          Top = 19
          Width = 97
          Height = 21
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = Edit2Exit
          OnKeyPress = Edit2KeyPress
        end
        object BitBtn1: TBitBtn
          Left = 262
          Top = 14
          Width = 95
          Height = 29
          Caption = '&Consultar'
          Default = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 789
    Height = 143
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 787
      Height = 141
      Hint = 'Selecione  la  empresa y dble clik para  cambiar de empresa'
      Align = alClient
      Color = clMoneyGreen
      DataSource = dsafiliados_empresas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid2CellClick
      OnColEnter = DBGrid2ColEnter
      OnDblClick = DBGrid2DblClick
      OnEnter = DBGrid2ColEnter
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          Title.Caption = '...'
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tip_documento_emp'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_documento_emp'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_sucursal'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_ocupacion'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_ingreso_uni'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_tipo_sal'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'val_sueldo_afil'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_departamento_lab'
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'nom_depto'
          ReadOnly = True
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_ciudad_lab'
          Visible = True
        end
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'nom_ciudad'
          ReadOnly = True
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_zona'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dir_afiliado_lab'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tel_afiliado_lab'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tel_afiliado_lab2'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 121
    Width = 789
    Height = 176
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 2
    object Label2: TLabel
      Left = 282
      Top = 156
      Width = 152
      Height = 16
      Caption = 'Empresas Vinculadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox4: TGroupBox
      Left = 12
      Top = 6
      Width = 759
      Height = 149
      Caption = 'Datos Basicos de Afiliado'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label30: TLabel
        Left = 22
        Top = 20
        Width = 86
        Height = 13
        Caption = 'Primer Apellido'
        FocusControl = DBEdit31
      end
      object Label31: TLabel
        Left = 233
        Top = 19
        Width = 97
        Height = 13
        Caption = 'Segundo Apellido'
        FocusControl = DBEdit32
      end
      object Label27: TLabel
        Left = 406
        Top = 21
        Width = 85
        Height = 13
        Caption = 'Primer Nombre'
        FocusControl = DBEdit28
      end
      object Label28: TLabel
        Left = 544
        Top = 20
        Width = 96
        Height = 13
        Caption = 'Segundo Nombre'
        FocusControl = DBEdit29
      end
      object Label33: TLabel
        Left = 128
        Top = 62
        Width = 116
        Height = 13
        Caption = 'Fecha de Nacimiento'
      end
      object Label24: TLabel
        Left = 30
        Top = 62
        Width = 28
        Height = 13
        Caption = 'Sexo'
      end
      object Label25: TLabel
        Left = 444
        Top = 60
        Width = 64
        Height = 13
        Caption = 'Estado Civil'
      end
      object Label36: TLabel
        Left = 274
        Top = 60
        Width = 74
        Height = 13
        Caption = 'Discapacidad'
      end
      object Label39: TLabel
        Left = 538
        Top = 60
        Width = 135
        Height = 13
        Caption = 'Estrato Socioeconomico'
      end
      object Label1: TLabel
        Left = 524
        Top = 102
        Width = 86
        Height = 13
        Caption = 'Tipo de Afiliado'
      end
      object DBEdit31: TDBEdit
        Left = 24
        Top = 34
        Width = 165
        Height = 21
        Color = clMoneyGreen
        DataField = 'pri_apellido'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit32: TDBEdit
        Left = 195
        Top = 34
        Width = 178
        Height = 21
        Color = clMoneyGreen
        DataField = 'seg_apellido'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit28: TDBEdit
        Left = 380
        Top = 34
        Width = 157
        Height = 21
        Color = clMoneyGreen
        DataField = 'pri_nombre'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit29: TDBEdit
        Left = 544
        Top = 34
        Width = 155
        Height = 21
        Color = clMoneyGreen
        DataField = 'seg_nombre'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dblsexo: TDBLookupComboBox
        Left = 24
        Top = 76
        Width = 99
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_sexo'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_sexo'
        ListField = 'nom_sexo'
        ListSource = dssexo
        ParentFont = False
        TabOrder = 3
      end
      object dblestrato: TDBLookupComboBox
        Left = 532
        Top = 73
        Width = 167
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_estrato'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_estrato'
        ListField = 'nom_estrato'
        ListSource = dsestratos
        ParentFont = False
        TabOrder = 6
      end
      object dbldiscapacidad: TDBLookupComboBox
        Left = 246
        Top = 74
        Width = 176
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_discapacidad'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_discapacidad'
        ListField = 'nom_discapacidad'
        ListSource = dsdiscapacidades
        ParentFont = False
        TabOrder = 7
      end
      object dblestadocivil: TDBLookupComboBox
        Left = 427
        Top = 74
        Width = 103
        Height = 21
        Color = clMoneyGreen
        DataField = 'cod_estado_civ'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'cod_estado_civ'
        ListField = 'nom_estado_civ'
        ListSource = dsestadosciviles
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 76
        Width = 105
        Height = 21
        Color = clMoneyGreen
        DataField = 'fec_nacimiento'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 496
        Top = 117
        Width = 203
        Height = 21
        Color = clMoneyGreen
        DataField = 'COD_MODALIDAD_TRA'
        DataSource = dsafiliados
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_MODALIDAD_TRA'
        ListField = 'NOM_MODALIDAD_TRA'
        ListSource = dtsmotrabajo
        ParentFont = False
        TabOrder = 9
      end
      object Edit1: TEdit
        Left = 22
        Top = 116
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object Edit3: TEdit
        Left = 68
        Top = 116
        Width = 99
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object Edit4: TEdit
        Left = 176
        Top = 116
        Width = 131
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object Edit5: TEdit
        Left = 326
        Top = 116
        Width = 155
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
    end
  end
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 429
    Top = 1
  end
  object qryafiliados: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT  *'
      'FROM AFILIADOS'
      'WHERE'
      '  AFILIADOS.COD_ESTADO='#39'A'#39' AND'
      '  AFILIADOS.TIP_DOCUMENTO =:"TIP_DOC"  AND'#9
      '  AFILIADOS.NUM_DOCUMENTO =:"NUM_DOC" AND'
      '  AFILIADOS.COD_TIPO_AFIL='#39'C'#39
      ''
      '')
    Left = 379
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_doc'
        ParamType = ptUnknown
        Value = 'CC'
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptUnknown
        Value = '40402044'
      end>
    object qryafiliadosTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO'
      Size = 18
    end
    object qryafiliadosCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.AFILIADOS.COD_SEXO'
      Size = 1
    end
    object qryafiliadosCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.COD_TIPO_AFIL'
      Size = 1
    end
    object qryafiliadosCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.AFILIADOS.COD_MODALIDAD_TRA'
      Size = 1
    end
    object qryafiliadosCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO_CIV'
      Size = 1
    end
    object qryafiliadosCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTRATO'
      Size = 3
    end
    object qryafiliadosCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESCOLARIDAD'
      Size = 3
    end
    object qryafiliadosCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.AFILIADOS.COD_PROFESION'
      Size = 3
    end
    object qryafiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.AFILIADOS.COD_ESTADO'
      Size = 2
    end
    object qryafiliadosCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.AFILIADOS.COD_OFICINA'
      Size = 3
    end
    object qryafiliadosCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.AFILIADOS.COD_REGIONAL'
      Size = 3
    end
    object qryafiliadosPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.PRI_NOMBRE'
      Size = 25
    end
    object qryafiliadosSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.AFILIADOS.SEG_NOMBRE'
      Size = 25
    end
    object qryafiliadosPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.PRI_APELLIDO'
      Size = 25
    end
    object qryafiliadosSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.AFILIADOS.SEG_APELLIDO'
      Size = 25
    end
    object qryafiliadosFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.AFILIADOS.FEC_NACIMIENTO'
    end
    object qryafiliadosFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_SIS'
    end
    object qryafiliadosFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.AFILIADOS.FEC_AFILIACION_UNI'
    end
    object qryafiliadosEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_TIP_DOC'
      Size = 3
    end
    object qryafiliadosEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.AFILIADOS.EPS_NUM_DOC'
      Size = 18
    end
    object qryafiliadosCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qryafiliadosCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_CIUDAD_RES'
      Size = 3
    end
    object qryafiliadosCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.AFILIADOS.COD_BARRIO_RES'
      Size = 3
    end
    object qryafiliadosCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.AFILIADOS.COD_ZONA'
      Size = 3
    end
    object qryafiliadosACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_TIP_DOC'
      Size = 3
    end
    object qryafiliadosACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.AFILIADOS.ACE_NUMERO_DOC'
      Size = 18
    end
    object qryafiliadosCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.AFILIADOS.COD_DISCAPACIDAD'
      Size = 1
    end
    object qryafiliadosNUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.AFILIADOS.NUM_SEMANA_COTIZA'
    end
    object qryafiliadosFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.AFILIADOS.FEC_RADICACION'
    end
    object qryafiliadosNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.AFILIADOS.NUM_FORMATO_AFIL'
      Size = 10
    end
    object qryafiliadosDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.DIR_AFILIADO_RES'
      Size = 50
    end
    object qryafiliadosTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES'
    end
    object qryafiliadosTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.AFILIADOS.TEL_AFILIADO_RES2'
    end
    object qryafiliadosCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.CEL_AFILIADO'
    end
    object qryafiliadosEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.AFILIADOS.EML_AFILIADO'
      Size = 50
    end
    object qryafiliadosFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.AFILIADOS.FEC_ULTIMA_NOV'
    end
    object qryafiliadosTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qryafiliadosTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qryafiliadosTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qryafiliadosNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.AFILIADOS.NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qryafiliadosSEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.AFILIADOS.SEM_COTIZACION'
    end
  end
  object qryafiliados_empresas: TQuery
    AutoCalcFields = False
    ObjectView = True
    AutoRefresh = True
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '         AFILIADOS_EMPRESAS.COD_OCUPACION,   '
      '         AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI,   '
      '         AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI,   '
      '         AFILIADOS_EMPRESAS.TIP_DOCUMENTO_EMP,   '
      '         AFILIADOS_EMPRESAS.NUM_DOCUMENTO_EMP,   '
      '         AFILIADOS_EMPRESAS.COD_SUCURSAL,   '
      '         AFILIADOS_EMPRESAS.COD_ESTADO,   '
      '         AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL,   '
      '         AFILIADOS_EMPRESAS.FEC_INGRESO_UNI,   '
      '         AFILIADOS_EMPRESAS.FEC_EGRESO_UNI,'
      '         AFILIADOS_EMPRESAS.COD_DEPARTAMENTO_LAB,'
      '         AFILIADOS_EMPRESAS.COD_CIUDAD_LAB,'
      '         AFILIADOS_EMPRESAS.DIR_AFILIADO_LAB,'
      '         AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB,'
      '         AFILIADOS_EMPRESAS.TEL_AFILIADO_LAB2,'
      '         AFILIADOS_EMPRESAS.COD_TIPO_SAL,'
      '         AFILIADOS_EMPRESAS.COD_ZONA,'
      '        AFILIADOS_EMPRESAS.FEC_ING_EMPRESA'
      ''
      'FROM AFILIADOS_EMPRESAS  '
      'WHERE'
      '  AFILIADOS_EMPRESAS.TIP_DOCUMENTO_AFI  =:"TIP_DOCUMENTO" AND'
      '  AFILIADOS_EMPRESAS.NUM_DOCUMENTO_AFI =:"NUM_DOCUMENTO" AND'
      '  AFILIADOS_EMPRESAS.COD_ESTADO = '#39'A'#39' AND'
      '  AFILIADOS_EMPRESAS.FEC_INGRESO_UNI IS NOT NULL'
      ''
      ''
      '')
    Left = 476
    Top = 2
    ParamData = <
      item
        DataType = ftString
        Name = 'TIP_DOCUMENTO'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftString
        Name = 'NUM_DOCUMENTO'
        ParamType = ptUnknown
        Size = 19
      end>
    object qryafiliados_empresasnom_tipo_sal: TStringField
      DisplayLabel = 'Tipo de Salario'
      FieldKind = fkLookup
      FieldName = 'nom_tipo_sal'
      LookupDataSet = dmafiliaciones.tbltipos_salarios
      LookupKeyFields = 'cod_tipo_sal'
      LookupResultField = 'nom_tipo_sal'
      KeyFields = 'cod_tipo_sal'
      Size = 50
      Lookup = True
    end
    object qryafiliados_empresasnom_zona: TStringField
      DisplayLabel = 'Zona'
      FieldKind = fkLookup
      FieldName = 'nom_zona'
      LookupDataSet = dmafiliaciones.tblzonas
      LookupKeyFields = 'cod_zona'
      LookupResultField = 'nom_zona'
      KeyFields = 'cod_zona'
      Size = 50
      Lookup = True
    end
    object qryafiliados_empresasnom_depto: TStringField
      DisplayLabel = 'Nombre de Departamento'
      FieldKind = fkLookup
      FieldName = 'nom_depto'
      LookupDataSet = dmafiliaciones.tbldepartamentos
      LookupKeyFields = 'cod_departamento'
      LookupResultField = 'nom_departamento'
      KeyFields = 'cod_departamento_lab'
      Size = 100
      Lookup = True
    end
    object qryafiliados_empresasnom_ciudad: TStringField
      DisplayLabel = 'Nombre de Ciudad'
      FieldKind = fkLookup
      FieldName = 'nom_ciudad'
      LookupDataSet = dmafiliaciones.tblciudades
      LookupKeyFields = 'cod_departamento;cod_ciudad'
      LookupResultField = 'nom_ciudad'
      KeyFields = 'cod_departamento_lab;cod_ciudad_lab'
      Size = 100
      Lookup = True
    end
    object qryafiliados_empresascod_ocupacion: TStringField
      DisplayLabel = 'Ocupacion'
      FieldName = 'cod_ocupacion'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_ocupacion'
      FixedChar = True
      Size = 3
    end
    object qryafiliados_empresastip_documento_afi: TStringField
      FieldName = 'tip_documento_afi'
      Origin = 'DBUNIMEC.afiliados_empresas.tip_documento_afi'
      FixedChar = True
      Size = 3
    end
    object qryafiliados_empresasnum_documento_afi: TStringField
      FieldName = 'num_documento_afi'
      Origin = 'DBUNIMEC.afiliados_empresas.num_documento_afi'
      FixedChar = True
      Size = 18
    end
    object qryafiliados_empresastip_documento_emp: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qryafiliados_empresasnum_documento_emp: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.afiliados_empresas.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object qryafiliados_empresascod_sucursal: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'cod_sucursal'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_sucursal'
      FixedChar = True
      Size = 2
    end
    object qryafiliados_empresascod_estado: TStringField
      FieldName = 'cod_estado'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_estado'
      FixedChar = True
      Size = 2
    end
    object qryafiliados_empresasval_sueldo_afil: TFloatField
      DisplayLabel = 'Ingreso (IBC)'
      FieldName = 'val_sueldo_afil'
      Origin = 'DBUNIMEC.afiliados_empresas.val_sueldo_afil'
      EditFormat = '##,###,###'
      currency = True
    end
    object qryafiliados_empresasfec_ingreso_uni: TDateTimeField
      DisplayLabel = 'Fecha de Ingreso al Sistema'
      FieldName = 'fec_ingreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_ingreso_uni'
    end
    object qryafiliados_empresasfec_egreso_uni: TDateTimeField
      DisplayLabel = 'Fecha de Egreso al Sistema'
      FieldName = 'fec_egreso_uni'
      Origin = 'DBUNIMEC.afiliados_empresas.fec_egreso_uni'
    end
    object qryafiliados_empresascod_departamento_lab: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'cod_departamento_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_departamento_lab'
      FixedChar = True
      Size = 2
    end
    object qryafiliados_empresascod_ciudad_lab: TStringField
      DisplayLabel = 'Ciudad'
      FieldName = 'cod_ciudad_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_ciudad_lab'
      FixedChar = True
      Size = 3
    end
    object qryafiliados_empresasdir_afiliado_lab: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'dir_afiliado_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.dir_afiliado_lab'
      FixedChar = True
      Size = 50
    end
    object qryafiliados_empresastel_afiliado_lab: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'tel_afiliado_lab'
      Origin = 'DBUNIMEC.afiliados_empresas.tel_afiliado_lab'
      FixedChar = True
    end
    object qryafiliados_empresastel_afiliado_lab2: TStringField
      DisplayLabel = 'Telefono (Opcional)'
      FieldName = 'tel_afiliado_lab2'
      Origin = 'DBUNIMEC.afiliados_empresas.tel_afiliado_lab2'
      FixedChar = True
    end
    object qryafiliados_empresascod_tipo_sal: TStringField
      FieldName = 'cod_tipo_sal'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_tipo_sal'
      FixedChar = True
      Size = 1
    end
    object qryafiliados_empresascod_zona: TStringField
      FieldName = 'cod_zona'
      Origin = 'DBUNIMEC.afiliados_empresas.cod_zona'
      FixedChar = True
      Size = 3
    end
    object qryafiliados_empresasnom_ocupacion: TStringField
      DisplayLabel = 'Ocupaci'#243'n'
      FieldKind = fkLookup
      FieldName = 'nom_ocupacion'
      LookupDataSet = dmafiliaciones.tblocupaciones
      LookupKeyFields = 'cod_ocupacion'
      LookupResultField = 'nom_ocupacion'
      KeyFields = 'cod_ocupacion'
      Size = 100
      Lookup = True
    end
    object qryafiliados_empresasFEC_ING_EMPRESA: TDateTimeField
      FieldName = 'FEC_ING_EMPRESA'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.FEC_ING_EMPRESA'
    end
  end
  object dsafiliados_empresas: TDataSource
    DataSet = qryafiliados_empresas
    Left = 514
    Top = 4
  end
  object dstipos_documentos: TDataSource
    DataSet = dmafiliaciones.tbltipos_documentos
    Left = 736
    Top = 72
  end
  object dssexo: TDataSource
    DataSet = dmafiliaciones.tblsexo
    Left = 736
    Top = 104
  end
  object dsestadosciviles: TDataSource
    DataSet = dmafiliaciones.tblestadosciviles
    Left = 736
    Top = 200
  end
  object dsestratos: TDataSource
    DataSet = dmafiliaciones.tblestratos
    Left = 736
    Top = 136
  end
  object dsdiscapacidades: TDataSource
    DataSet = dmafiliaciones.tbldiscapacidades
    Left = 736
    Top = 168
  end
  object dtsmotrabajo: TDataSource
    DataSet = dmafiliaciones.tblmodalidadtrabajo
    Left = 560
    Top = 16
  end
end

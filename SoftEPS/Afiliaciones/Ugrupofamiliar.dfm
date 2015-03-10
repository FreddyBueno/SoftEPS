object frmgrupofamiliar: Tfrmgrupofamiliar
  Left = 2
  Top = 101
  Width = 797
  Height = 471
  Caption = 'Grupo Familiar'
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poScreenCenter
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
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label26: TLabel
      Left = 216
      Top = 34
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
      TabOrder = 6
      Visible = False
    end
    object btningresos: TButton
      Left = 588
      Top = 78
      Width = 155
      Height = 29
      Caption = '&Ingresos Nuevos beneficiarios'
      TabOrder = 4
      OnClick = btningresosClick
    end
    object btnegresos: TButton
      Left = 597
      Top = 78
      Width = 150
      Height = 25
      Caption = '&Retiro de Afiliados'
      TabOrder = 3
      OnClick = btnegresosClick
    end
    object btncertificados: TButton
      Left = 597
      Top = 82
      Width = 148
      Height = 25
      Caption = '&Certificados'
      TabOrder = 2
      OnClick = btncertificadosClick
    end
    object btncarnetizar: TButton
      Left = 599
      Top = 82
      Width = 140
      Height = 25
      Caption = '&Carnetizar'
      TabOrder = 1
      OnClick = btncarnetizarClick
    end
    object btnsuspencion: TBitBtn
      Left = 601
      Top = 84
      Width = 148
      Height = 25
      Caption = '&Suspencion'
      TabOrder = 5
      OnClick = btnsuspencionClick
    end
    object GroupBox16: TGroupBox
      Left = 8
      Top = 57
      Width = 779
      Height = 7
      TabOrder = 7
    end
    object gbdocumentos: TGroupBox
      Left = 8
      Top = 64
      Width = 359
      Height = 49
      Caption = 'Documento del Cotizante'
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
        Left = 104
        Top = 24
        Width = 44
        Height = 13
        Caption = 'Numero'
      end
      object dbltipos: TDBLookupComboBox
        Left = 39
        Top = 18
        Width = 49
        Height = 21
        Hint = 'Selecione el tipo de  documento'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = dbltiposExit
      end
      object Edit2: TEdit
        Left = 155
        Top = 19
        Width = 97
        Height = 21
        Hint = 'Digite  el numero de  documento'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = Edit2Exit
        OnKeyPress = Edit2KeyPress
      end
      object BitBtn1: TBitBtn
        Left = 259
        Top = 10
        Width = 98
        Height = 32
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
    object cbgrupofamiliar: TCheckBox
      Left = 380
      Top = 85
      Width = 129
      Height = 17
      Caption = 'Grupo Familiar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Button1: TButton
      Left = 514
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 9
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 789
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = -2
      Top = 1
      Width = 762
      Height = 63
      Caption = 'Datos Adicionales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label13: TLabel
        Left = 439
        Top = 16
        Width = 89
        Height = 14
        Caption = 'Fecha de Evento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label14: TLabel
        Left = 525
        Top = 34
        Width = 86
        Height = 13
        Caption = '(dd/mm/aaaa)'
        Visible = False
      end
      object Label17: TLabel
        Left = 609
        Top = 18
        Width = 102
        Height = 14
        Caption = 'Numero de Planilla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label2: TLabel
        Left = 134
        Top = 14
        Width = 103
        Height = 14
        Caption = 'Novedad del Retiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mefecha_evento: TMaskEdit
        Left = 440
        Top = 32
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        Visible = False
        OnExit = mefecha_eventoExit
      end
      object ednumero_planilla: TEdit
        Left = 609
        Top = 34
        Width = 119
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object dbgnovedades: TDBLookupComboBox
        Left = 20
        Top = 31
        Width = 403
        Height = 21
        Hint = 'Selecione  el motivo del Retiro del Afiliado'
        Color = clMoneyGreen
        KeyField = 'nov_codigo'
        ListField = 'nov_nombre'
        ListSource = dsnovedades
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = dbgnovedadesExit
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 305
    Width = 789
    Height = 132
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 789
      Height = 132
      Hint = 
        'Selecione el usuario a  Actualizar datos y  doble clik para Actu' +
        'alizar los datos'
      Align = alClient
      Color = clMoneyGreen
      DataSource = dsrelacion_afiliados
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
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_tipo_afil'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_parentesco'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tip_documento_ben'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_documento_ben'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nom_afiliado'
          Width = 337
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cod_sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fec_nacimiento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_ESTADO'
          Title.Caption = 'Estado'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 181
    Width = 789
    Height = 124
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 3
    object Label1: TLabel
      Left = 302
      Top = 102
      Width = 201
      Height = 16
      Caption = 'Grupo Familiar del Cotizante '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox4: TGroupBox
      Left = 12
      Top = 3
      Width = 759
      Height = 96
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
        Top = 12
        Width = 86
        Height = 14
        Caption = 'Primer Apellido'
        FocusControl = DBEdit31
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 173
        Top = 12
        Width = 97
        Height = 14
        Caption = 'Segundo Apellido'
        FocusControl = DBEdit32
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 348
        Top = 11
        Width = 85
        Height = 14
        Caption = 'Primer Nombre'
        FocusControl = DBEdit28
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 496
        Top = 11
        Width = 96
        Height = 14
        Caption = 'Segundo Nombre'
        FocusControl = DBEdit29
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 508
        Top = 49
        Width = 113
        Height = 14
        Caption = 'Fecha de Nacimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 654
        Top = 48
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
      object Label25: TLabel
        Left = 219
        Top = 50
        Width = 63
        Height = 14
        Caption = 'Estado Civil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 20
        Top = 50
        Width = 71
        Height = 14
        Caption = 'Discapacidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 339
        Top = 49
        Width = 133
        Height = 14
        Caption = 'Estrato Socioeconomico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 652
        Top = 12
        Width = 100
        Height = 14
        Caption = 'Modalidad Trabajo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'GoudyOlSt BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit31: TDBEdit
        Left = 17
        Top = 26
        Width = 122
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
        Left = 141
        Top = 26
        Width = 157
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
        Left = 301
        Top = 26
        Width = 164
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
        Left = 467
        Top = 25
        Width = 167
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
        Left = 632
        Top = 62
        Width = 112
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
        Left = 339
        Top = 63
        Width = 190
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
        Left = 22
        Top = 64
        Width = 149
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
        Left = 174
        Top = 64
        Width = 162
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
        Left = 528
        Top = 63
        Width = 94
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
        Left = 638
        Top = 24
        Width = 117
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
        ListSource = dtsmodalidadtra
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  object qryafiliados: TQuery
    OnCalcFields = qryafiliadosCalcFields
    DatabaseName = 'softeps'
    SQL.Strings = (
      'Select *'
      'From afiliados'
      'Where'
      '  afiliados.cod_estado='#39'A'#39' AND'
      '  afiliados.tip_documento =:"tip_doc"  and'#9
      '  afiliados.num_documento =:"num_doc" ')
    Left = 433
    Top = 51
    ParamData = <
      item
        DataType = ftString
        Name = 'tip_doc'
        ParamType = ptUnknown
        Value = 'CC '
      end
      item
        DataType = ftString
        Name = 'num_doc'
        ParamType = ptUnknown
        Value = '86041756'
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
  object dsafiliados: TDataSource
    DataSet = qryafiliados
    Left = 461
    Top = 51
  end
  object dsrelacion_afiliados: TDataSource
    DataSet = qryrelacion_afiliados
    Left = 517
    Top = 51
  end
  object qryupdateafiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  UPDATE afiliados  '
      '     SET cod_estado =:"estado",'
      '             fec_ultima_nov=:"fec_ult_nov"'
      
        '   WHERE ( afiliados.tip_documento = :"tip_documento_ben" ) AND ' +
        ' '
      
        '                  ( afiliados.num_documento = :"num_documento_be' +
        'n" ) AND'
      '                  ( afiliados.cod_estado = '#39'A'#39')')
    Left = 616
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fec_ult_nov'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento_ben'
        ParamType = ptUnknown
        Size = 19
      end>
  end
  object qryupdaterelacion_afiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  UPDATE relacion_afiliados  '
      '     SET cod_estado = :"estado",'
      '             fec_exclusion_nov =:"fec_hoy"    '
      
        '   WHERE ( relacion_afiliados.tip_documento_ben =:"tip_documento' +
        '_ben" ) AND  '
      
        '         ( relacion_afiliados.num_documento_ben =:"num_documento' +
        '_ben" )  AND'
      '         ( relacion_afiliados.cod_estado = '#39'A'#39')')
    Left = 680
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fec_hoy'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_ben'
        ParamType = ptUnknown
      end>
  end
  object qryafiliados_empresas: TQuery
    DatabaseName = 'softeps'
    DataSource = dsrelacion_afiliados
    SQL.Strings = (
      '  UPDATE afiliados_empresas  '
      '     SET cod_estado = :"estado",   '
      '         fec_egreso_uni =:"fecha_hoy" '
      
        '   WHERE ( afiliados_empresas.tip_documento_emp = :"tip_doc_emp"' +
        ' ) AND  '
      
        '         ( afiliados_empresas.num_documento_emp = :"num_doc_emp"' +
        ' ) AND  '
      
        '         ( afiliados_empresas.cod_sucursal = :"codigo_suc" ) AND' +
        '  '
      
        '         ( afiliados_empresas.tip_documento_afi = :"tip_document' +
        'o_ben" ) AND  '
      
        '         ( afiliados_empresas.num_documento_afi = :"num_document' +
        'o_ben" )  AND'
      '         ( afiliados_empresas.fec_ingreso_uni =:"fecha_ingreso")')
    Left = 734
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hoy'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_doc_emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_doc_emp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo_suc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_ingreso'
        ParamType = ptUnknown
      end>
  end
  object qrynovedades_afiliados: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'INSERT INTO novedades_afiliados  '
      '                                 ( nov_codigo,   '
      '                                   tip_documento,   '
      '                                   num_documento,   '
      '                                   cod_oficina,   '
      '                                   cod_regional,   '
      '                                   usu_tipo_doc,   '
      '                                   usu_numero_doc,   '
      '                                   fec_novedad_afil,   '
      '                                   nom_campo,   '
      '                                   dat_campo_ant,   '
      '                                   nom_tabla,   '
      '                                   dat_campo_des,'
      '                                   fec_evento,   '
      '                                   fec_aplicativo,   '
      '                                   tip_documento_emp,   '
      '                                   num_documento_emp,   '
      '                                   cod_sucursal,'
      '                                   num_planilla,'
      '                                   cod_novedad_afil) '
      '                          VALUES ( :"novedad",   '
      '                                   :"tip_documento_ben",   '
      '                                   :"num_documento_ben",   '
      '                                   :"oficina",   '
      '                                   :"regional",   '
      '                                   :"tipo_usuario",   '
      '                                   :"numero_usuairo",   '
      '                                   :"fecha_novedad",   '
      '                                   '#39#39',   '
      '                                   '#39#39', '
      '                                   '#39'afiliados'#39',   '
      '                                   '#39#39',   '
      '                                   :"fecha_novedad",   '
      '                                   :"fecha_sistema",'
      '                                   :"tip_doc_emp",'
      '                                   :"num_doc_emp",'
      '                                   :"cod_sucursal",'
      '                                   :"num_planilla",'
      '                                   nov_afiliados.nextval)')
    Left = 616
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'oficina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'regional'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numero_usuairo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_sistema'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tip_doc_emp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'num_doc_emp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'num_planilla'
        ParamType = ptInput
      end>
  end
  object qrynovedades: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT novedades.nov_codigo,   '
      '                novedades.nov_nombre  '
      '    FROM novedades  '
      '   WHERE ( novedades.cla_novedad = :"clase_novedad" ) AND  '
      '                  ( novedades.tipo_novedad =:"tipo_novedad"  )'
      '                 ')
    Left = 656
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clase_novedad'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_novedad'
        ParamType = ptUnknown
      end>
    object qrynovedadesnov_codigo: TStringField
      DisplayWidth = 11
      FieldName = 'nov_codigo'
      Origin = 'DBUNIMEC.novedades.nov_codigo'
      FixedChar = True
      Size = 3
    end
    object qrynovedadesnov_nombre: TStringField
      DisplayWidth = 63
      FieldName = 'nov_nombre'
      Origin = 'DBUNIMEC.novedades.nov_nombre'
      FixedChar = True
      Size = 50
    end
  end
  object dsnovedades: TDataSource
    DataSet = qrynovedades
    Left = 624
    Top = 32
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
  object dsestratos: TDataSource
    DataSet = dmafiliaciones.tblestratos
    Left = 736
    Top = 136
  end
  object dsdiscapacidades: TDataSource
    DataSet = dmafiliaciones.tbldiscapacidades
    Left = 744
    Top = 138
  end
  object dsestadosciviles: TDataSource
    DataSet = dmafiliaciones.tblestadosciviles
    Left = 754
    Top = 150
  end
  object qrypermanencia_eps: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      'SELECT na.nov_codigo,   '
      
        '       MONTHS_BETWEEN(na.fec_novedad_afil,SYSDATE) as permanenci' +
        'a_EPS  '
      '    FROM novedades_afiliados na,   '
      '         novedades  '
      '   WHERE ( novedades.nov_codigo = na.nov_codigo ) and   '
      '         ( novedades.cla_novedad = '#39'10'#39' ) and  '
      '         ( na.tip_documento = :"tip_documento") and  '
      '         ( na.num_documento =:"num_documento"  ) and'
      '         ( na.fec_novedad_afil = (select max(fec_novedad_afil)'
      '                                    from novedades_afiliados'
      
        '                                  where  na.tip_documento = tip_' +
        'documento and  '
      
        '                                         na.num_documento = num_' +
        'documento  )) ')
    Left = 616
    Top = 168
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento'
        ParamType = ptUnknown
        Size = 19
      end>
    object qrypermanencia_epsNOV_CODIGO: TStringField
      FieldName = 'NOV_CODIGO'
      FixedChar = True
      Size = 3
    end
    object qrypermanencia_epsPERMANENCIA_EPS: TFloatField
      FieldName = 'PERMANENCIA_EPS'
    end
  end
  object qrypermanecias: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  SELECT permanencias.fec_periodo,   '
      '         permanencias.per_permanencia,   '
      '         permanencias.per_suspension,   '
      '         permanencias.per_inactividad  '
      '    FROM permanencias  '
      '  where  permanencias.fec_periodo <= SYSDATE  and  '
      
        '          permanencias.fec_periodo = (SELECT max(permanencias.fe' +
        'c_periodo)'
      '                                        FROM permanencias)')
    Left = 556
    Top = 200
    object qrypermaneciasFEC_PERIODO: TDateTimeField
      FieldName = 'FEC_PERIODO'
    end
    object qrypermaneciasPER_PERMANENCIA: TFloatField
      FieldName = 'PER_PERMANENCIA'
    end
    object qrypermaneciasPER_SUSPENSION: TFloatField
      FieldName = 'PER_SUSPENSION'
    end
    object qrypermaneciasPER_INACTIVIDAD: TFloatField
      FieldName = 'PER_INACTIVIDAD'
    end
  end
  object qrynovedadesingresoegresos: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      ' SELECT DISTINCT novedades.nov_codigo,   '
      '         novedades.nov_nombre,   '
      '         novedades_afiliados.tip_documento,'
      '         novedades_afiliados.num_documento,'
      '         novedades_afiliados.fec_novedad_afil,   '
      '         novedades_afiliados.fec_evento,   '
      '         empresas.nom_empresa '
      '    FROM novedades,   '
      '               novedades_afiliados,'
      '               empresas  '
      
        '  WHERE ( novedades_afiliados.nov_codigo = novedades.nov_codigo ' +
        ') and  '
      
        '                 ( novedades_afiliados.tip_documento = :"tip_doc' +
        'umento" ) AND  '
      
        '                 ( novedades_afiliados.num_documento = :"num_doc' +
        'umento" )   and'
      '                 ( cla_novedad in ('#39'10'#39','#39'20'#39') ) and'
      
        '                 (  novedades_afiliados.tip_documento_emp = empr' +
        'esas.tip_documento (+) ) and   '
      
        '                 (  novedades_afiliados.num_documento_emp = empr' +
        'esas.num_documento (+) ) and  '
      
        '                 (  novedades_afiliados.cod_sucursal = empresas.' +
        'cod_sucursal (+) )'
      'ORDER BY novedades_afiliados.fec_novedad_afil ASC ')
    Left = 617
    Top = 291
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'tip_documento'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'num_documento'
        ParamType = ptUnknown
        Size = 19
      end>
    object qrynovedadesingresoegresosnov_codigo: TStringField
      FieldName = 'nov_codigo'
      FixedChar = True
      Size = 3
    end
    object qrynovedadesingresoegresosnov_nombre: TStringField
      FieldName = 'nov_nombre'
      FixedChar = True
      Size = 50
    end
    object qrynovedadesingresoegresostip_documento: TStringField
      FieldName = 'tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrynovedadesingresoegresosnum_documento: TStringField
      FieldName = 'num_documento'
      FixedChar = True
      Size = 18
    end
    object qrynovedadesingresoegresosfec_novedad_afil: TDateTimeField
      FieldName = 'fec_novedad_afil'
    end
    object qrynovedadesingresoegresosfec_evento: TDateTimeField
      FieldName = 'fec_evento'
    end
    object qrynovedadesingresoegresosnom_empresa: TStringField
      FieldName = 'nom_empresa'
      FixedChar = True
      Size = 100
    end
  end
  object Qrytemporal: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'softeps'
    ParamCheck = False
    SQL.Strings = (
      'Select *'
      'From temporalito'
      'Order by temporalito.cod_tipo_afil desc')
    Left = 616
    Top = 264
    object Qrytemporalnom_afiliado: TStringField
      DefaultExpression = 'pri_apellido'
      FieldKind = fkCalculated
      FieldName = 'nom_afiliado'
      FixedChar = True
      Size = 255
      Calculated = True
    end
    object Qrytemporalnom_parentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_parentesco'
      LookupDataSet = dmafiliaciones.tblparentescos
      LookupKeyFields = 'cod_parentesco'
      LookupResultField = 'nom_parentesco'
      KeyFields = 'cod_parentesco'
      Size = 50
      Lookup = True
    end
    object Qrytemporalnom_sexo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_sexo'
      LookupDataSet = dmafiliaciones.tblsexo
      LookupKeyFields = 'cod_sexo'
      LookupResultField = 'nom_sexo'
      KeyFields = 'cod_sexo'
      Size = 50
      Lookup = True
    end
    object Qrytemporalnom_tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_tipo'
      LookupDataSet = dmafiliaciones.tbltiposafiliados
      LookupKeyFields = 'cod_tipo_afil'
      LookupResultField = 'nom_tipo_afil'
      KeyFields = 'cod_tipo_afil'
      Size = 50
      Lookup = True
    end
    object Qrytemporalnom_estado: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_estado'
      LookupDataSet = dmafiliaciones.tblestados
      LookupKeyFields = 'cod_estado'
      LookupResultField = 'nom_estado'
      KeyFields = 'cod_estado'
      Size = 50
      Lookup = True
    end
    object Qrytemporaltip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.temporalito.tip_documento'
      FixedChar = True
      Size = 3
    end
    object Qrytemporalnum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.temporalito.num_documento'
      FixedChar = True
      Size = 18
    end
    object Qrytemporalpri_nombre: TStringField
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.temporalito.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object Qrytemporalseg_nombre: TStringField
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.temporalito.seg_nombre'
      FixedChar = True
      Size = 25
    end
    object Qrytemporalpri_apellido: TStringField
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.temporalito.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object Qrytemporalseg_apellido: TStringField
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.temporalito.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object Qrytemporalcod_sexo: TStringField
      FieldName = 'cod_sexo'
      Origin = 'DBUNIMEC.temporalito.cod_sexo'
      FixedChar = True
      Size = 1
    end
    object Qrytemporalfec_nacimiento: TDateTimeField
      FieldName = 'fec_nacimiento'
      Origin = 'DBUNIMEC.temporalito.fec_nacimiento'
    end
    object Qrytemporalcod_parentesco: TStringField
      FieldName = 'cod_parentesco'
      Origin = 'DBUNIMEC.temporalito.cod_parentesco'
      FixedChar = True
      Size = 3
    end
    object Qrytemporalcod_tipo_afil: TStringField
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.temporalito.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object Qrytemporalcod_estado: TStringField
      FieldName = 'cod_estado'
      Origin = 'DBUNIMEC.temporalito.cod_estado'
      FixedChar = True
      Size = 2
    end
    object QrytemporalNUM_SEMANAS: TFloatField
      FieldName = 'NUM_SEMANAS'
      Origin = 'SOFTEPS.TEMPORALITO.NUM_SEMANAS'
    end
  end
  object StoredProc1: TStoredProc
    DatabaseName = 'softeps'
    StoredProcName = 'PA_SELECCION_GRUPO'
    Left = 616
    Top = 232
    ParamData = <
      item
        DataType = ftMemo
        Name = 'TIP_DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'NUM_DOCUMENTO'
        ParamType = ptInput
      end>
  end
  object qryestratos_afiliados: TQuery
    DatabaseName = 'softeps'
    RequestLive = True
    SQL.Strings = (
      'SELECT COD_ESTRATO_AFILIADO  '
      '    FROM ESTRATOS_AFILIADOS  '
      
        '  WHERE  ((ESTRATOS_AFILIADOS.MIN_NUM_SALARIOS_MIN <= :"NUM_SALA' +
        'RIOS" ) AND'
      #9' (ESTRATOS_AFILIADOS.MAX_NUM_SALARIOS_MIN >= :"NUM_SALARIOS"))'
      ''
      '')
    Left = 616
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num_salarios'
        ParamType = ptInputOutput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'NUM_SALARIOS'
        ParamType = ptInputOutput
      end>
    object qryestratos_afiliadoscod_estrato_afiliado: TStringField
      FieldName = 'cod_estrato_afiliado'
      Origin = 'DBUNIMEC.estratos_afiliados.cod_estrato_afiliado'
      FixedChar = True
      Size = 3
    end
  end
  object qryvalor_total_cot: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      ' SELECT sum(val_sueldo_afil)  '
      '    FROM afiliados_empresas,relacion_afiliados  '
      
        '   WHERE ( relacion_afiliados.tip_documento_ben = :"tip_doc" ) A' +
        'ND  '
      
        '         ( relacion_afiliados.num_documento_ben = :"num_doc" ) A' +
        'ND'
      
        '         ( relacion_afiliados.tip_documento_cot = afiliados_empr' +
        'esas.tip_documento_afi ) AND  '
      
        '         ( relacion_afiliados.num_documento_cot = afiliados_empr' +
        'esas.num_documento_afi ) AND'
      '         ( relacion_afiliados.cod_estado = '#39'A'#39') AND'
      '         ( afiliados_empresas.cod_estado = '#39'A'#39')')
    Left = 616
    Top = 328
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
        Value = '86041756'
      end>
    object qryvalor_total_cotSUMVAL_SUELDO_AFIL: TFloatField
      FieldName = 'SUM(VAL_SUELDO_AFIL)'
      Origin = 'SOFTEPS.AFILIADOS_EMPRESAS.VAL_SUELDO_AFIL'
    end
  end
  object qrysalariominimo: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT valoresanulescomp.sal_minimo'
      ' FROM  valoresanulescomp  '
      'WHERE valoresanulescomp.ano =  :"ano"')
    Left = 648
    Top = 360
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ano'
        ParamType = ptUnknown
      end>
    object qrysalariominimosal_minimo: TFloatField
      FieldName = 'sal_minimo'
    end
  end
  object qrycartera: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      'SELECT cartera.tip_documento,   '
      '         cartera.num_documento,   '
      '         cartera.tip_documento_emp,   '
      '         cartera.num_documento_emp,   '
      '         cartera.cod_sucursal_emp,   '
      '         cartera.per_compensacion,   '
      '         cartera.tipo_mora,   '
      '         cartera.valor_mora,   '
      '         cartera.valor_upc,   '
      '         cartera.cod_tipo_afil,'
      '         empresas.nom_empresa,'
      '         cartera.tip_documento_cot,'
      '         cartera.num_documento_cot'
      '    FROM cartera,empresas  '
      '   WHERE ( cartera.tip_documento = :"tip_documento" ) AND  '
      '         ( cartera.num_documento = :"num_documento" ) and'
      
        '         ( cartera.tip_documento_emp  = empresas.tip_documento (' +
        '+) ) AND'
      
        '         ( cartera.num_documento_emp = empresas.num_documento (+' +
        ') ) AND'
      
        '         ( cartera.cod_sucursal_emp = empresas.cod_sucursal (+) ' +
        ') ')
    Left = 736
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tip_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento'
        ParamType = ptUnknown
      end>
    object qrycarteratip_documento: TStringField
      FieldName = 'tip_documento'
      Origin = 'DBUNIMEC.cartera.tip_documento'
      FixedChar = True
      Size = 3
    end
    object qrycarteranum_documento: TStringField
      FieldName = 'num_documento'
      Origin = 'DBUNIMEC.cartera.num_documento'
      FixedChar = True
      Size = 18
    end
    object qrycarteratip_documento_emp: TStringField
      DisplayLabel = 'Tip Doc Empresa'
      FieldName = 'tip_documento_emp'
      Origin = 'DBUNIMEC.cartera.tip_documento_emp'
      FixedChar = True
      Size = 3
    end
    object qrycarteranum_documento_emp: TStringField
      DisplayLabel = 'Num Doc Empresa'
      FieldName = 'num_documento_emp'
      Origin = 'DBUNIMEC.cartera.num_documento_emp'
      FixedChar = True
      Size = 18
    end
    object qrycarteracod_sucursal_emp: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'cod_sucursal_emp'
      Origin = 'DBUNIMEC.cartera.cod_sucursal_emp'
      FixedChar = True
      Size = 2
    end
    object qrycarteraper_compensacion: TStringField
      DisplayLabel = 'Periodo'
      FieldName = 'per_compensacion'
      Origin = 'DBUNIMEC.cartera.per_compensacion'
      FixedChar = True
      Size = 7
    end
    object qrycarteratipo_mora: TStringField
      DisplayLabel = 'Tipo de Mora'
      FieldName = 'tipo_mora'
      Origin = 'DBUNIMEC.cartera.tipo_mora'
      FixedChar = True
      Size = 1
    end
    object qrycarteravalor_mora: TFloatField
      DisplayLabel = 'Valor de la Mora'
      FieldName = 'valor_mora'
      Origin = 'DBUNIMEC.cartera.valor_mora'
    end
    object qrycarteravalor_upc: TFloatField
      DisplayLabel = 'Valor de la UPC'
      FieldName = 'valor_upc'
      Origin = 'DBUNIMEC.cartera.valor_upc'
    end
    object qrycarteracod_tipo_afil: TStringField
      DisplayLabel = 'Tipo de Afiliado'
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.cartera.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object qrycarteranom_empresa: TStringField
      DisplayLabel = 'Nombre de la Empresa'
      FieldName = 'nom_empresa'
      Origin = 'DBUNIMEC.empresas.nom_empresa'
      FixedChar = True
      Size = 100
    end
    object qrycarteratip_documento_cot: TStringField
      DisplayLabel = 'Tipo doc Cotizante'
      FieldName = 'tip_documento_cot'
      Origin = 'DBUNIMEC.cartera.tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qrycarteranum_documento_cot: TStringField
      DisplayLabel = 'Num Doc Cotizante'
      FieldName = 'num_documento_cot'
      Origin = 'DBUNIMEC.cartera.num_documento_cot'
      FixedChar = True
      Size = 18
    end
  end
  object qryrelacion_afiliados: TQuery
    OnCalcFields = qryrelacion_afiliadosCalcFields
    DatabaseName = 'softeps'
    DataSource = dscotiza
    SQL.Strings = (
      'Select DISTINCT'
      '  relacion_afiliados.tip_documento_ben,'
      '  relacion_afiliados.num_documento_ben,'
      '  relacion_afiliados.tip_documento_cot,'
      '  relacion_afiliados.num_documento_cot,'
      '  afiliados.pri_apellido,'
      '  afiliados.seg_apellido,'
      '  afiliados.pri_nombre,'
      '  afiliados.seg_nombre,'
      '  afiliados.cod_sexo,'
      '  afiliados.fec_nacimiento,'
      '  relacion_afiliados.cod_parentesco,'
      '  afiliados.cod_tipo_afil,'
      '  afiliados.fec_afiliacion_uni,'
      '  afiliados.cod_departamento_res,'
      '  afiliados.cod_ciudad_res,'
      '  afiliados.cod_discapacidad,  '
      '  SYSDATE,'
      '  afiliados.cod_estado,'
      '  PRESTADORES.MON_PRESTADOR'
      'From relacion_afiliados,afiliados,PRESTADORES'
      'Where'
      
        '          afiliados.tip_documento=relacion_afiliados.tip_documen' +
        'to_ben AND'
      
        '          afiliados.num_documento=relacion_afiliados.num_documen' +
        'to_ben and'
      '          relacion_afiliados.cod_estado='#39'A'#39' and'
      
        '          relacion_afiliados.tip_documento_cot=:"tip_documento_c' +
        'ot" and'
      
        '          relacion_afiliados.num_documento_cot=:"num_documento_c' +
        'ot" and'
      
        '          afiliados.tip_documento_ips = PRESTADORES.TIP_IDENTIFI' +
        'CACION (+) and'
      
        '          afiliados.num_documento_ips  = PRESTADORES.NUM_IDENTIF' +
        'ICACION (+)'
      ''
      'order by afiliados.cod_tipo_afil desc')
    Left = 491
    Top = 51
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TIP_DOCUMENTO_COT'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftString
        Name = 'NUM_DOCUMENTO_COT'
        ParamType = ptUnknown
        Size = 19
      end>
    object qryrelacion_afiliadosnom_parentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_parentesco'
      LookupDataSet = dmafiliaciones.tblparentescos
      LookupKeyFields = 'cod_parentesco'
      LookupResultField = 'nom_parentesco'
      KeyFields = 'cod_parentesco'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_sexo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_sexo'
      LookupDataSet = dmafiliaciones.tblsexo
      LookupKeyFields = 'cod_sexo'
      LookupResultField = 'nom_sexo'
      KeyFields = 'cod_sexo'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_tipo: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_tipo'
      LookupDataSet = dmafiliaciones.tbltiposafiliados
      LookupKeyFields = 'cod_tipo_afil'
      LookupResultField = 'nom_tipo_afil'
      KeyFields = 'cod_tipo_afil'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_estado: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_estado'
      LookupDataSet = dmafiliaciones.tblestados
      LookupKeyFields = 'cod_estado'
      LookupResultField = 'nom_estado'
      KeyFields = 'cod_estado'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadoscod_tipo_afil: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo_afil'
      Origin = 'DBUNIMEC.afiliados.cod_tipo_afil'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadoscod_parentesco: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'cod_parentesco'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadostip_documento_ben: TStringField
      DisplayLabel = 'Tipo Doc'
      FieldName = 'tip_documento_ben'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnum_documento_ben: TStringField
      DisplayLabel = 'Numero Doc'
      FieldName = 'num_documento_ben'
      FixedChar = True
      Size = 18
    end
    object qryrelacion_afiliadospri_apellido: TStringField
      DisplayLabel = 'Primer Apellido'
      FieldName = 'pri_apellido'
      Origin = 'DBUNIMEC.afiliados.pri_apellido'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadosseg_apellido: TStringField
      DisplayLabel = 'Segundo Apellido'
      FieldName = 'seg_apellido'
      Origin = 'DBUNIMEC.afiliados.seg_apellido'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadospri_nombre: TStringField
      DisplayLabel = 'Primer Nombre'
      FieldName = 'pri_nombre'
      Origin = 'DBUNIMEC.afiliados.pri_nombre'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadosseg_nombre: TStringField
      DisplayLabel = 'Segundo Nombre'
      FieldName = 'seg_nombre'
      Origin = 'DBUNIMEC.afiliados.seg_nombre'
      FixedChar = True
      Size = 25
    end
    object qryrelacion_afiliadoscod_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'cod_sexo'
      Origin = 'DBUNIMEC.afiliados.cod_sexo'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadosfec_nacimiento: TDateTimeField
      DisplayLabel = 'Fecha de Nac.'
      FieldName = 'fec_nacimiento'
      Origin = 'DBUNIMEC.afiliados.fec_nacimiento'
    end
    object qryrelacion_afiliadosnom_afiliado: TStringField
      DisplayLabel = 'Nombre'
      FieldKind = fkCalculated
      FieldName = 'nom_afiliado'
      Size = 255
      Calculated = True
    end
    object qryrelacion_afiliadosfec_afiliacion_uni: TDateTimeField
      FieldName = 'fec_afiliacion_uni'
      Origin = 'DBUNIMEC.afiliados.fec_afiliacion_uni'
    end
    object qryrelacion_afiliadoscod_departamento_res: TStringField
      FieldName = 'cod_departamento_res'
      Origin = 'DBUNIMEC.afiliados.cod_departamento_res'
      FixedChar = True
      Size = 2
    end
    object qryrelacion_afiliadoscod_ciudad_res: TStringField
      FieldName = 'cod_ciudad_res'
      Origin = 'DBUNIMEC.afiliados.cod_ciudad_res'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnom_depto: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_depto'
      LookupDataSet = dmafiliaciones.tbldepartamentos
      LookupKeyFields = 'cod_departamento'
      LookupResultField = 'nom_departamento'
      KeyFields = 'cod_departamento_res'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadosnom_ciudad: TStringField
      FieldKind = fkLookup
      FieldName = 'nom_ciudad'
      LookupDataSet = dmafiliaciones.tblciudades
      LookupKeyFields = 'cod_departamento;cod_ciudad'
      LookupResultField = 'nom_ciudad'
      KeyFields = 'cod_departamento_res;cod_ciudad_res'
      Size = 50
      Lookup = True
    end
    object qryrelacion_afiliadostip_documento_cot: TStringField
      FieldName = 'tip_documento_cot'
      Origin = 'DBUNIMEC.relacion_afiliados.tip_documento_cot'
      FixedChar = True
      Size = 3
    end
    object qryrelacion_afiliadosnum_documento_cot: TStringField
      FieldName = 'num_documento_cot'
      Origin = 'DBUNIMEC.relacion_afiliados.num_documento_cot'
      FixedChar = True
      Size = 18
    end
    object qryrelacion_afiliadosnom_deptociudad: TStringField
      FieldKind = fkCalculated
      FieldName = 'nom_deptociudad'
      Size = 255
      Calculated = True
    end
    object qryrelacion_afiliadoscod_discapacidad: TStringField
      FieldName = 'cod_discapacidad'
      FixedChar = True
      Size = 1
    end
    object qryrelacion_afiliadoscod_estrato: TStringField
      FieldKind = fkCalculated
      FieldName = 'cod_estrato'
      Size = 1
      Calculated = True
    end
    object qryrelacion_afiliadosdoc_ben: TStringField
      FieldKind = fkCalculated
      FieldName = 'doc_ben'
      Size = 30
      Calculated = True
    end
    object qryrelacion_afiliadosdoc_cot: TStringField
      FieldKind = fkCalculated
      FieldName = 'doc_cot'
      Size = 30
      Calculated = True
    end
    object qryrelacion_afiliadosSYSDATE: TDateTimeField
      FieldName = 'SYSDATE'
    end
    object qryrelacion_afiliadosCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryrelacion_afiliadosMON_PRESTADOR: TStringField
      FieldName = 'MON_PRESTADOR'
      Size = 100
    end
  end
  object qryupdaterelacion_afiliados_sus: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      '  UPDATE relacion_afiliados  '
      '     SET cod_estado = :"estado"'
      
        '   WHERE ( relacion_afiliados.tip_documento_ben =:"tip_documento' +
        '_ben" ) AND  '
      
        '         ( relacion_afiliados.num_documento_ben =:"num_documento' +
        '_ben" )  AND'
      '         ( relacion_afiliados.cod_estado = '#39'A'#39')')
    Left = 730
    Top = 116
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tip_documento_ben'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_documento_ben'
        ParamType = ptUnknown
      end>
  end
  object qrycotiza: TQuery
    DatabaseName = 'softeps'
    DataSource = dsafiliados
    SQL.Strings = (
      'SELECT tip_documento_cot,'
      '               num_documento_cot,'
      '               tip_documento_ben,'
      '               num_documento_ben'
      'FROM relacion_afiliados'
      
        'WHERE  relacion_afiliados.tip_documento_ben = :"tip_documento"  ' +
        'and'
      
        '                relacion_afiliados.num_documento_ben = :"num_doc' +
        'umento" and'
      '                relacion_afiliados.cod_estado = '#39'A'#39)
    Left = 492
    Top = 16
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
    object qrycotizaTIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_COT'
      FixedChar = True
      Size = 3
    end
    object qrycotizaNUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_COT'
      Size = 18
    end
    object qrycotizaTIP_DOCUMENTO_BEN: TStringField
      FieldName = 'TIP_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.TIP_DOCUMENTO_BEN'
      Size = 3
    end
    object qrycotizaNUM_DOCUMENTO_BEN: TStringField
      FieldName = 'NUM_DOCUMENTO_BEN'
      Origin = 'SOFTEPS.RELACION_AFILIADOS.NUM_DOCUMENTO_BEN'
      Size = 18
    end
  end
  object dscotiza: TDataSource
    DataSet = qrycotiza
    Left = 520
    Top = 16
  end
  object Qrymaxfecha: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT MAX(FEC_NOVEDAD_AFIL) FEC_NOVEDAD'
      'FROM NOVEDADES_AFILIADOS'
      'WHERE TIP_DOCUMENTO =:"TIP_DOCUMENTO" AND'
      'NUM_DOCUMENTO=:"NUM_DOCUMENTO" AND'
      'NOV_CODIGO IN ('#39'01'#39','#39'02'#39','#39'03'#39','#39'91'#39','#39'92'#39','#39'93'#39')')
    Left = 736
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'TIP_DOCUMENTO'
        ParamType = ptUnknown
        Value = 'CC'
      end
      item
        DataType = ftString
        Name = 'NUM_DOCUMENTO'
        ParamType = ptUnknown
        Value = '79793369'
      end>
    object QrymaxfechaFEC_NOVEDAD: TDateTimeField
      FieldName = 'FEC_NOVEDAD'
    end
  end
  object dtsmodalidadtra: TDataSource
    DataSet = dmafiliaciones.tblmodalidadtrabajo
    Left = 202
    Top = 20
  end
end

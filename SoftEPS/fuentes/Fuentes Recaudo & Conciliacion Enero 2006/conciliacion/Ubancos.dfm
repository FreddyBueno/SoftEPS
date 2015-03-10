object frmbancos: Tfrmbancos
  Left = 221
  Top = 114
  Width = 632
  Height = 491
  ActiveControl = edtcodbanco
  BorderIcons = [biSystemMenu]
  Caption = 'Bancos '
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
  PrintScale = poPrintToFit
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 241
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 211
      Top = 41
      Width = 236
      Height = 23
      Caption = 'BANCOS AUTORIZADOS '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 517
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
    object GroupBox1: TGroupBox
      Left = 8
      Top = 68
      Width = 601
      Height = 165
      Caption = 'Datos Generales  del Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label12: TLabel
        Left = 18
        Top = 19
        Width = 65
        Height = 13
        Caption = 'Codigo Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 120
        Top = 20
        Width = 86
        Height = 13
        Caption = 'Nombre del Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 450
        Top = 16
        Width = 105
        Height = 13
        Caption = 'Numero de  la  cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 12
        Top = 53
        Width = 77
        Height = 13
        Caption = 'Tipo Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 110
        Top = 54
        Width = 94
        Height = 13
        Caption = 'Numero Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 146
        Top = 89
        Width = 85
        Height = 13
        Caption = 'Direccion principal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 290
        Top = 56
        Width = 69
        Height = 13
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 490
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Ciudad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 376
        Top = 90
        Width = 80
        Height = 13
        Caption = 'Tipo de Recaudo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 512
        Top = 89
        Width = 65
        Height = 13
        Caption = 'Estado Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 135
        Width = 47
        Height = 13
        Caption = 'Tel'#233'fonos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 210
        Top = 137
        Width = 44
        Height = 13
        Caption = 'Contacto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtcodbanco: TEdit
        Left = 22
        Top = 33
        Width = 51
        Height = 21
        Hint = 'Codigo del Banco'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = edtcodbancoExit
        OnKeyPress = edtcodbancoKeyPress
      end
      object edtnombanco: TEdit
        Left = 98
        Top = 33
        Width = 339
        Height = 21
        Hint = 'Nombre  del Banco'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyPress = edtnombancoKeyPress
      end
      object edtnumcuenta: TEdit
        Left = 443
        Top = 32
        Width = 146
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object edtnumerodoc: TEdit
        Left = 96
        Top = 67
        Width = 139
        Height = 21
        Hint = 'Numero de Documento'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyPress = edtcodbancoKeyPress
      end
      object edtdireccion: TEdit
        Left = 18
        Top = 104
        Width = 295
        Height = 21
        Hint = 'Escriba  la  direccion principal del banco'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 70
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object dbcdepartamento: TDBLookupComboBox
        Left = 240
        Top = 68
        Width = 190
        Height = 21
        Hint = 'Selecione  el  departamento'
        Color = clMoneyGreen
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_DEPARTAMENTO'
        ListField = 'NOM_DEPARTAMENTO'
        ListSource = DataModule1.dtsdepartamentos
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = dbcdepartamentoExit
      end
      object dbcciuadad: TDBLookupComboBox
        Left = 438
        Top = 68
        Width = 155
        Height = 21
        Hint = 'Selecione  la  ciudad '
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_CIUDAD'
        ListField = 'NOM_CIUDAD'
        ListSource = DataModule1.dtsciudades
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object cbestbanco: TComboBox
        Left = 502
        Top = 104
        Width = 90
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Items.Strings = (
          'ACTIVO'
          'INACTIVO')
      end
      object cbtiporecaudo: TComboBox
        Left = 318
        Top = 104
        Width = 181
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Items.Strings = (
          'RECAUDO NACIONAL'
          'RECAUDO LOCAL')
      end
      object CBTIPO: TDBLookupComboBox
        Left = 18
        Top = 66
        Width = 73
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'TIP_DOCUMENTO'
        ListField = 'TIP_DOCUMENTO'
        ListSource = DataModule1.dtsdocumento
        ParentFont = False
        TabOrder = 3
      end
      object edttelefono: TEdit
        Left = 66
        Top = 134
        Width = 137
        Height = 21
        Hint = 'Escriba  la  direccion principal del banco'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 70
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyPress = edttelefonoKeyPress
      end
      object edtcontacto: TEdit
        Left = 266
        Top = 134
        Width = 325
        Height = 21
        Hint = 'Escriba  la  direccion principal del banco'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 70
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 624
    Height = 223
    Align = alClient
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 6
      Top = 40
      Width = 599
      Height = 141
      Caption = 'Lista  de Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 595
        Height = 124
        Hint = 'Doble clik  para  selecionar  el banco'
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataModule1.dtsbancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
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
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_BANCO'
            Title.Caption = 'Codigo'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_BANCO'
            Title.Caption = 'Nombre  Del Banco'
            Width = 473
            Visible = True
          end>
      end
    end
    object btnnuevo: TBitBtn
      Left = 64
      Top = 190
      Width = 89
      Height = 21
      Caption = '&Nuevo'
      TabOrder = 1
      OnClick = btnnuevoClick
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
    object btncancelar: TBitBtn
      Left = 214
      Top = 190
      Width = 81
      Height = 23
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = btncancelarClick
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
    object btnCerrar: TBitBtn
      Left = 496
      Top = 190
      Width = 79
      Height = 23
      Caption = '&Cerrar'
      TabOrder = 3
      OnClick = btnCerrarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFF000000
        7F7FFF0000FF0000FF7F7FFFFFFFFFFFFFFF7F7FFF0000FFFFFFFF7F7FFF7F7F
        FFFFFFFF404040FFFFFFFFFFFF0000007F7FFF3F3FFFBFBFFFBFBFFF3F3FFF3F
        3FFFBFBFFF0000FFFFFFFF7F7FFF7F7FFFFFFFFF404040FFFFFFFFFFFF000000
        7F7FFF3F3FFFBFBFFFFFFFFF3F3FFF3F3FFFFFFFFF0000FFFFFFFF7F7FFF7F7F
        FFFFFFFF404040FFFFFFFFFFFF0000007F7FFF0000FF0000FF7F7FFFBFBFFFBF
        BFFF7F7FFF0000FF7F7FFF0000FF0000FF7F7FFF404040FFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF404040FFFFFFFFFFFF00000020202040404040404040404040404040
        4040404040404040404040404040404040404040606060FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btneliminar: TBitBtn
      Left = 362
      Top = 190
      Width = 81
      Height = 23
      Caption = '&Eliminar'
      TabOrder = 4
      OnClick = btneliminarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000003F3F007FBF003F7F000020000000000000000000
        000000000000000000000000000000000000000000000000003F3F007FBF003F
        7F003F7F003F5F00000000000000000000000000000000000000000000000000
        0000000000003F3F007FBF003F7F003F7F007FBF003F3F000000000000000000
        000000000000000000000000000000000000003F3F007FBF003F7F003F7F007F
        BF007F7F003F3F00000000000000000000000000000000000000000000000000
        2000004000000020003F7F007FBF007F7F003F3F000000000000000000000000
        000000000000000000000000003F3F003F5F002000008000000020007F7F003F
        3F000000000000000000000000000000000000000000000000003F3F007FBF00
        7FBF007FBF002000004000003F3F000000000000000000000000000000000000
        000000000000002000004000000020007FBF007FBF003F5F0020000000000000
        000000000000000000000000000000000000003030306F306F00200000800000
        0020007FBF003F3F000000000000000000000000000000000000000000000000
        0000006F306F9F609FDF60DF002000004000003F3F0000000000000000000000
        00000000000000000000000000000000BF3FBFFF7FFF7F3F7FDF60DF6F306F00
        2000000000000000000000000000000000000000000000000000000000000000
        FF7FFFFF7FFFBF7FBF6F306F3030300000000000000000000000000000000000
        00000000000000000000000000000000BF7FBFFF7FFFFF7FFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        3F003F7F3F7F3F3F3F0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
end

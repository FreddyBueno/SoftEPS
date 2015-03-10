object frmformatos: Tfrmformatos
  Left = 137
  Top = 162
  Width = 542
  Height = 425
  ActiveControl = dblbanco
  BorderIcons = [biSystemMenu]
  Caption = 'Formatos  de los Extractos Bancarios'
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
    Width = 534
    Height = 63
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 105
      Top = 35
      Width = 348
      Height = 23
      Caption = 'FORMATO MOVIMIENTO BANCARIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 420
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 534
    Height = 135
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 66
      Top = 2
      Width = 86
      Height = 13
      Caption = 'Nombre del banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 326
      Top = 2
      Width = 53
      Height = 13
      Caption = 'Delimitador'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dblbanco: TDBLookupComboBox
      Left = 28
      Top = 14
      Width = 259
      Height = 21
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'COD_BANCO'
      ListField = 'NOM_BANCO'
      ListSource = DataModule1.dtsbancos
      ParentFont = False
      TabOrder = 0
      OnClick = dblbancoClick
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 50
      Width = 503
      Height = 83
      Caption = 'Detalle  de los Campos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 18
        Top = 24
        Width = 73
        Height = 13
        Caption = 'Nombre Campo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 50
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Inicio :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 156
        Top = 52
        Width = 41
        Height = 13
        Caption = 'Longitud'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 258
        Top = 52
        Width = 43
        Height = 13
        Caption = 'Formato '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 324
        Top = 16
        Width = 73
        Height = 13
        Caption = 'Numero Campo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dblcampo: TDBLookupComboBox
        Left = 98
        Top = 18
        Width = 211
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'CODCAMPO'
        ListField = 'NOMCAMPO'
        ListSource = DataModule1.dtscampos
        ParentFont = False
        TabOrder = 0
        OnClick = dblcampoClick
        OnEnter = dblcampoEnter
        OnExit = dblcampoExit
      end
      object edtinicio: TEdit
        Left = 98
        Top = 50
        Width = 43
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
        OnEnter = edtinicioEnter
        OnExit = edtinicioExit
        OnKeyPress = edtinicioKeyPress
      end
      object edtlongitud: TEdit
        Left = 206
        Top = 48
        Width = 37
        Height = 21
        Hint = 'Digite la longitud'
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = edtlongitudExit
        OnKeyPress = edtlongitudKeyPress
      end
      object msformato: TMaskEdit
        Left = 308
        Top = 48
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object edtnumcampo: TEdit
        Left = 412
        Top = 14
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edtlongitudKeyPress
      end
      object ckestado: TCheckBox
        Left = 414
        Top = 50
        Width = 57
        Height = 21
        Caption = '&Activo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object dbldelimitadores: TComboBox
      Left = 312
      Top = 14
      Width = 187
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
      TabOrder = 1
      Items.Strings = (
        'COMA'
        'PUNTO Y  COMA'
        'TABULADOR'
        'ESPACIOS'
        'FIJOS')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 198
    Width = 534
    Height = 200
    Align = alClient
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 12
      Top = 2
      Width = 509
      Height = 169
      Caption = 'Descripcion de los  campos'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 505
        Height = 152
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataModule1.dtsformatos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'COD_CAMPO'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DELIMITADOR'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INI_CAMPO'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LON_CAMPO'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMATO'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_CAMPO'
            Visible = True
          end>
      end
    end
    object btnnuevo: TBitBtn
      Left = 14
      Top = 172
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
      Left = 142
      Top = 172
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
      Left = 401
      Top = 172
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
      Left = 268
      Top = 172
      Width = 81
      Height = 23
      Caption = '&Eliminar'
      TabOrder = 4
      OnClick = btneliminarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF00007F00000000004000
        0040000040000020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00007F0000FF00007F004020008000008000008000006020002040000020FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003F00003F0000FF00203F00400000
        4000004000006000008000006020000020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00004000800000003F0000BF0000FF0000FF0000FF0000BF00203F0080000040
        40FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0040400040000000BF00003F00400000
        007F0000BF0000FF00007F008000008000000040FFFFFFFFFFFFFFFFFF000040
        0080000040000000FF0000FF00400000600000203F0000FF0000BF0060000080
        00004040FFFFFFFFFFFFFFFFFF00004000800000800000007F0000FF00200000
        00BF0000FF0000FF0000FF004000008000004040FFFFFFFFFFFFFFFFFF000040
        00800000800000007F0000FF0000BF0000FF0000FF0000FF0000FF0040000080
        00004040FFFFFFFFFFFFFFFFFF00004000800000800000203F0000FF0000FF00
        00FF00003F0000FF0000FF004000008000004040FFFFFFFFFFFFFFFFFF000020
        0060200080000040000000FF0000BF00203F0040000000FF0000FF0040000080
        00002040FFFFFFFFFFFFFFFFFFFFFFFF00204000800000800000400000600000
        800000203F0000FF0000FF0000BF004020000020FFFFFFFFFFFFFFFFFFFFFFFF
        00002000602000800000800000800000203F0000FF0000FF0000FF0000FF0000
        BF00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00002000404000800000800000
        007F0000FF00007F00007F00007F0000FF00007FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00004000404000003F00007F002040000020FFFFFF0000
        7F00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000FFFFFF000000000000FFFFFFFFFFFFFFFFFF}
    end
  end
end

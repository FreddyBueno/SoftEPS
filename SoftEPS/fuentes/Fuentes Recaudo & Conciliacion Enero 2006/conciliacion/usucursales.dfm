object frmsucursales: Tfrmsucursales
  Left = 234
  Top = 122
  Width = 563
  Height = 435
  ActiveControl = dbcbanco
  BorderIcons = []
  Caption = 'Ingreso de Sucursales'
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
    Width = 555
    Height = 205
    Align = alTop
    TabOrder = 0
    object Label47: TLabel
      Left = 173
      Top = 33
      Width = 256
      Height = 23
      Caption = 'INGRESO DE SUCURSALES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 64
      Width = 521
      Height = 131
      Caption = 'Sucursales  de  los Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 75
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Banco : '
        Font.Charset = OEM_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Modern'
        Font.Style = []
        ParentFont = False
      end
      object dbcbanco: TDBLookupComboBox
        Left = 125
        Top = 16
        Width = 353
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_BANCO'
        ListField = 'NOM_BANCO'
        ListSource = DataModule1.dtsbancos
        ParentFont = False
        TabOrder = 0
        OnClick = dbcbancoExit
        OnExit = dbcbancoExit
      end
      object GroupBox2: TGroupBox
        Left = 20
        Top = 46
        Width = 489
        Height = 81
        TabOrder = 1
        object Label1: TLabel
          Left = 106
          Top = 6
          Width = 77
          Height = 13
          Caption = 'Codigo  Sucursal :'
          Font.Charset = OEM_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Modern'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 50
          Width = 77
          Height = 13
          Caption = 'Nombre Sucursal :'
          Font.Charset = OEM_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Modern'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 376
          Top = 6
          Width = 80
          Height = 13
          Caption = 'Estado Sucursal   :'
          Font.Charset = OEM_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Modern'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 230
          Top = 6
          Width = 78
          Height = 13
          Caption = 'Codigo  Regional :'
          Font.Charset = OEM_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Modern'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 16
          Top = 16
          Width = 85
          Height = 19
          AutoSize = False
          Caption = 'SOFTEPS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
        end
        object edtcodsucursal: TEdit
          Left = 104
          Top = 22
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 0
          OnExit = edtcodsucursalExit
          OnKeyPress = edtcodsucursalKeyPress
        end
        object edtnomsucursal: TEdit
          Left = 104
          Top = 50
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 100
          ParentFont = False
          TabOrder = 3
        end
        object cbestsucursal: TComboBox
          Left = 374
          Top = 22
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
          TabOrder = 2
          Items.Strings = (
            'ACTIVO'
            'INACTIVO')
        end
        object edtcodregional: TEdit
          Left = 228
          Top = 22
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edtcodsucursalKeyPress
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 205
    Width = 555
    Height = 203
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 6
      Width = 521
      Height = 153
      Caption = 'Lista  de Sucursales  del Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object dbsucursales: TDBGrid
        Left = 2
        Top = 15
        Width = 517
        Height = 136
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataModule1.dtssucursales
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = dbsucursalesColEnter
        Columns = <
          item
            Expanded = False
            FieldName = 'CODSUCURSAL'
            Title.Caption = 'Codigo Sucursal'
            Title.Font.Charset = OEM_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Modern'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_REGIONAL'
            Title.Caption = 'C'#243'digo Regional'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Modern'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMSUCURSAL'
            Title.Caption = 'Nombre Sucursal'
            Title.Font.Charset = OEM_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Modern'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
    object btnnuevo: TBitBtn
      Left = 40
      Top = 172
      Width = 97
      Height = 25
      Caption = '&Nuevo'
      TabOrder = 4
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
      Left = 290
      Top = 172
      Width = 113
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
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
    object btncerrar: TBitBtn
      Left = 416
      Top = 172
      Width = 97
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 2
      OnClick = btncerrarClick
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
    object BitBtn1: TBitBtn
      Left = 165
      Top = 172
      Width = 106
      Height = 25
      Caption = 'Cargar &Archivo'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000EFEFEFC0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0FFFFFF40404040404040404040404040404040404040
        4040404040404040606060808080808080808080808080C0C0C03F3F3F7F0000
        7F00007F00007F00007F00007F00007F00007F0000FFBFBF7F3F3F6060608080
        80808080808080C0C0C0FFBFBFBF3F3FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF
        7F7FBFBFBFFFFFFF7F7F7F3F3F3F606060808080808080C0C0C0FFFFFF7F7F7F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F3F3F
        3F606060808080C0C0C0FFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F3F3F3F606060C0C0C0FFFFFF9F9F9F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F
        7F7F7F7F3F0000C0C0C0FFFFFF808080DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBFBFBF7F7F7F7F7F7F7F7F7F404040C0C0C0FFFFFF808080
        8080807F00007F0000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F
        7F7F7F7F404040C0C0C0FFFFFF8080808080809F6060DF9F9FFFFFFF7F3F3F7F
        0000BFBFBFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F404040C0C0C0FFFFFF808080
        8080808080808080809F9F9FDF9F9FFFFFFF9F9F9F7F00007F0000BF7F7FFFFF
        FF7F7F7F606060C0C0C0FFFFFF8080808080808080808080808080808080807F
        00007F40409F6060BF4040808080808080808080808080C0C0C0FFFFFF808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080C0C0C0FFFFFF80808080808080808080808080808080808080
        8080808080808080808080808080808080808080808080C0C0C0FFFFFFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF}
    end
  end
  object Opabrir: TOpenDialog
    DefaultExt = '*.txt'
    FileName = '*.txt'
    Filter = '*.txt'
    InitialDir = 'C:\'
    Left = 238
    Top = 351
  end
end

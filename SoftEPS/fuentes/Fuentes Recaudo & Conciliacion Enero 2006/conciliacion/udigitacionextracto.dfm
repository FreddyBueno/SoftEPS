object frmdigitacionextractos: Tfrmdigitacionextractos
  Left = 344
  Top = 151
  Width = 646
  Height = 440
  ActiveControl = dblbanco
  BorderIcons = [biSystemMenu]
  Caption = 'Digitacion de  Extractos  Bancarios'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000999000000000000000000000000000099999000FF00000FF00000
    000000400999099940FF00000FF0000000000400999C0099CC0FF000FF000000
    00044C0999CCC0999C0FF000FF000000004CC0099CCCCC099C0FF000FF000000
    04CCC0999CCCCC0099C0FF0FF00000004CCC0099CCCCCCC099C0FF0FF0000004
    AACC0999CAAACCC09990FFFFF000002AAAC0099C00000CC0099C0FFF0000002A
    ACC0999A0FFF0CAA09990FFF0400002AAA0099CA0FFF0AAA0099C000A440002A
    CA0999CA0FFF0CAAA0999AAAAA2004CCA0099CCC0FFF000AA0099AAAAA2004CA
    A0999CCC0FFFFFF00C0999AAAA2004CC0099CCCCC000FFFFF0C099CCAA2004CC
    099CCCCCCCC000FFF0C0999CAA2004C0099CCCCAA000FFFFF0CC099AAA2004A0
    999CCC000FFFFFF00CCC0099AA20040099CCCC0FFFFF000AACCCC099AA200009
    000CCC0FF000AAAAACCCC09992200000FFF0CC0000AAAAAAACCCC00992000090
    FFF0CCAAAAAAAAAACCCCCA099900000FFFFF0CCAACAAAAACCCCCAA009900090F
    F0FF0CCAACCCAACCCCCCAAA09990090FF0FF0CCCCCCCCCCCCCCCAA20099000FF
    000FF0CCCCCCCCCCCCCAA200099900FF090FF0CCCCCCCCCCCCAAA999999900FF
    090FF00CCCCCCCCCCCC4999999900FF00000FF04CCCCCCCCC440000000000FF0
    0000FF004444444440000000000000000000000000000000000000000000FFF8
    3870FFF01870FFC00070FF800021FE000021FC000001F8000003F0000003E000
    0003C0000003C0000003C0000001C00000018000000180000001800000018000
    0001800000018000000180000001C00000018000000380000003000000030000
    0001000000010000000000000000000000010E0001FF0E1007FF0E1FFFFF}
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
    Top = 0
    Width = 638
    Height = 189
    Align = alTop
    TabOrder = 0
    OnClick = Panel2Click
    object Label47: TLabel
      Left = 151
      Top = 39
      Width = 430
      Height = 23
      Caption = 'DIGITACION DE MOVIMIENTOS BANCARIOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 547
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
      Left = 140
      Top = 70
      Width = 80
      Height = 15
      Caption = 'Nombre  del Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object dblbanco: TDBLookupComboBox
      Left = 228
      Top = 68
      Width = 209
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
      OnClick = dblbancoClick
      OnExit = dblbancoExit
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 96
      Width = 611
      Height = 89
      Caption = 'Informacion del Extracto Bancario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 36
        Top = 12
        Width = 45
        Height = 15
        Caption = 'Sucursal  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 50
        Width = 60
        Height = 15
        Caption = 'Nit  Empresa :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 270
        Top = 12
        Width = 76
        Height = 15
        Caption = 'No. de la Planilla :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 390
        Top = 12
        Width = 84
        Height = 15
        Caption = 'Fecha  del Recaudo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 508
        Top = 12
        Width = 79
        Height = 15
        Caption = 'Valor Consignado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 218
        Top = 50
        Width = 73
        Height = 15
        Caption = 'Nombre Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 220
        Top = 50
        Width = 69
        Height = 15
        Caption = 'Tipo Movimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 438
        Top = 66
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
      object Label10: TLabel
        Left = 156
        Top = 12
        Width = 45
        Height = 15
        Caption = 'Regional  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object dblsucursal: TDBLookupComboBox
        Left = 8
        Top = 28
        Width = 113
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'CODSUCURSAL'
        ListField = 'CODSUCURSAL'
        ListSource = DataModule1.dtssucursales
        ParentFont = False
        TabOrder = 0
        OnExit = dblsucursalExit
      end
      object editnitempresa: TEdit
        Left = 8
        Top = 64
        Width = 109
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        TabOrder = 5
        OnChange = editnitempresaChange
        OnExit = editnitempresaExit
      end
      object edtplanilla: TEdit
        Left = 248
        Top = 28
        Width = 123
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 1
        OnChange = edtplanillaChange
        OnExit = edtplanillaExit
        OnKeyPress = edtvalircanceladoKeyPress
      end
      object dtfecharecuado: TDateTimePicker
        Left = 390
        Top = 28
        Width = 99
        Height = 21
        Date = 38680.335452824080000000
        Time = 38680.335452824080000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = dtfecharecuadoExit
      end
      object edtvalircancelado: TEdit
        Left = 502
        Top = 28
        Width = 93
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = edtvalircanceladoExit
        OnKeyPress = edtvalircanceladoKeyPress
      end
      object edtnombre: TEdit
        Left = 142
        Top = 64
        Width = 291
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Enabled = False
        TabOrder = 4
        Visible = False
      end
      object cbtipoconsignacion: TComboBox
        Left = 142
        Top = 64
        Width = 203
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'AUTOMATICO BANCOS'
          'MANUAL'
          'TRANSFERENCIA ACH'
          'PLANILLA INTEGRADA'
          'NOTA CREDITO'
          'S')
      end
      object cbtipoconsignacionIncap: TComboBox
        Left = 142
        Top = 64
        Width = 203
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 6
        Visible = False
        Items.Strings = (
          'LICENCIA'
          'INCAPACIDAD')
      end
      object dblregional: TDBLookupComboBox
        Left = 128
        Top = 28
        Width = 113
        Height = 21
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'COD_REGIONAL'
        ListField = 'COD_REGIONAL'
        ListSource = DataModule1.dtssucursales
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 189
    Width = 638
    Height = 224
    Align = alClient
    TabOrder = 1
    object Lbobservacion: TLabel
      Left = 20
      Top = 223
      Width = 63
      Height = 15
      Caption = 'Observaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 22
      Top = 8
      Width = 607
      Height = 185
      Caption = 'Listado de Movimientos Sin Conciliar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 603
        Height = 168
        Align = alClient
        Color = clMoneyGreen
        DataSource = DataModule1.dtsestracto
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_SUCURSAL'
            Title.Caption = 'SUCURSAL'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_DOCUMENTO'
            Title.Caption = 'NIT EMPRESA'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PLANILLA'
            Title.Caption = 'PLANILLA'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FEC_RECAUDO'
            Title.Caption = 'FECHA'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_CONSIGNACION'
            Title.Caption = 'VALOR'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_MOVIMIENTO'
            Title.Caption = 'MOVIMIENTO'
            Width = 112
            Visible = True
          end>
      end
    end
    object btnnuevo: TBitBtn
      Left = 54
      Top = 194
      Width = 97
      Height = 25
      Caption = '&Grabar'
      TabOrder = 0
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
      Left = 340
      Top = 194
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
      Left = 484
      Top = 194
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
    object btnmodificar: TBitBtn
      Left = 197
      Top = 194
      Width = 113
      Height = 25
      Caption = '&Modificar'
      TabOrder = 4
      OnClick = btnmodificarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000007F7F7F7F7F7F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7FFF00FFFF00FF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFF7F
        7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F007F7F3F7FFF00FF
        BF00BFBFBFBFFFFFFFFFFFFFFFFFFF7F7F7FFF00FFFF00FF3F003F7F007F7F00
        7F7F007F7F007F3F003FBFBFBFBF3F7FFF7F7F7F7F3FFFFFFFFFFFFFFFFFFF7F
        7F7FFF7F7FFF7F7F7F3F3FFF7F7F7F3F3F7F3F3F7F3F3F3F003FFFFFFF7F7F3F
        FFFF00BFBF00BFBFBFFFFFFFFFFFFF7F7F7FFFFF00FFFF007F7F00FFFF007F7F
        7FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBF00FFFF007F7F3FFFFFFFFFFFFF7F
        7F7FFFFF00FFFF007F7F00FFFF007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F3F7FFF003FBF00BFBFBFFFFFFF7F7F7F7FFF007FFF003F7F007FFF007F7F
        7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF00BF0000FF00007F00007F0000
        3F0000FF0000FF00007F0000FF003F3F3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
        FFFFFF3F7F3F00FF0000FF0000FF00007F0000FF0000FF00007F0000FF0000FF
        0000FF0000FF00007F00FFFFFFFFFFFFFFFFFFBFBFBF00BF3F00FF7F003F3F00
        000000FF7F00FF7F007F3F00FF7F3F3F3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
        FFFFFFFFFFFF3F7F7F00FFFF00BFBF00000000FFFF00FFFF007F7F00FFFF7F7F
        7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF00BFBF00FFFF00
        3F3F00FFFF00FFFF007F7F00FFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF3F7F7F007FFF003F7F007FFF007FFF003F7F007FFF3F3F
        3F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000BF00
        007F0000FF0000FF00007F0000FF0000FF0000FF0000FF00007FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3F3F7F00007F0000FF0000FF3F3F3F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF00
        003F00007F00007F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object edtobservacion: TEdit
      Left = 22
      Top = 242
      Width = 603
      Height = 21
      Color = clMoneyGreen
      TabOrder = 5
    end
  end
end

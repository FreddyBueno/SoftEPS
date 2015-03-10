object FRMINCAPACIDADESTUTELA: TFRMINCAPACIDADESTUTELA
  Left = 210
  Top = 136
  Width = 746
  Height = 523
  ActiveControl = Edtnumero
  BorderIcons = [biSystemMenu]
  Caption = 'INCAPACIDADES POR ACCION DE TUTELA'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000CCCCCC00001111111111111111111110CCCCCC000001
    11111111111111111110CCCCCC00010111111111111111111110CCCCCC000100
    11111111111111111110CCCCCC00011011111111111111111110CCCC0C000110
    01111111111111111110CCCCCC00011101111111111111111110CCCC0C000111
    00111111111111111110CCCCCC00011110111111111111111110CCCCCC000111
    10011111111111111110CCCCCC00011111011111111111111110000000000111
    11011111111111111110FFFBB000011111011100000000001110FFFBB0000111
    100110FFFFFFFFFF0110000000000111000000FF0F0FF0FF0007777700000110
    0F0FFFFFFFFFFFFFF0777777000001000F0F0F0F0FF0F0F00777777700000001
    0F0FFFFFFFFFFF0777007777000000110F0F0FFF00F0FF077007777700000000
    0F0FFFFFFFFFFFF00F077777000000000F0FFFFFFFFFFFFFFF07777700000000
    0F0F0F0F0F0F0FF0FF070707000000000F0FFFFFFFFFFFFFFF07070700000000
    0F0F0F0FF000F0F0FF070707000000000F0FFFFFFFFFFFFFFF00000000000000
    000F00F0F0FFF0F00F00000000000000000FFFFFFFFFFFFFFF00000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0001000000010000000100000001000000010000000100000001000000010000
    0001000000010000000100000001000000030000000300000003000000070000
    000700000007000000070000000700000007F0000007F0000007F0000007F000
    0007F0000007F00001FFFC0001FFFC0001FFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMinimized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel
    Left = 88
    Top = 59
    Width = 108
    Height = 15
    Caption = 'Numero de la Incapacidad'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 738
    Height = 120
    Align = alClient
    TabOrder = 3
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 45
      Height = 118
      Align = alLeft
      BorderStyle = bsSingle
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 692
      Top = 1
      Width = 45
      Height = 118
      Align = alRight
      BorderStyle = bsSingle
      TabOrder = 1
    end
    object sgdetalleinc: TStringGrid
      Left = 46
      Top = 1
      Width = 646
      Height = 118
      Align = alClient
      Color = clMoneyGreen
      ColCount = 9
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goTabs, goRowSelect]
      ScrollBars = ssHorizontal
      TabOrder = 2
      ColWidths = (
        69
        50
        95
        100
        92
        83
        85
        77
        87)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 339
    Width = 738
    Height = 37
    Align = alTop
    Color = clGradientInactiveCaption
    TabOrder = 2
    object Button3: TBitBtn
      Left = 26
      Top = 3
      Width = 96
      Height = 27
      Hint = 'Nueva Incapacidad'
      BiDiMode = bdLeftToRight
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        80808080808080808080BFBFBF9F9F9F80808080808080808080808080808080
        8080808080808080808080808080808080808080808080808080BFBFBFBFBFBF
        6060604040404040404040404040404040404040404040404040404040404040
        40606060808080808080BFBFBFBFBFBF40404000000000000000000000000000
        0000000000000000000000000000000000404040808080808080BFBFBFBFBFBF
        404040003FFF003F7F00007F007F7F007FFF00003F003FFF003F3F00007F007F
        7F404040808080808080BFBFBFBFBFBF404040007FFF00000000003F003F7F00
        3FBF000000007FFF00000000007F007F7F404040808080808080BFBFBFBFBFBF
        404040003FFF003F7F000000003F7F00003F000000007FFF00000000007F007F
        7F404040808080808080BFBFBFBFBFBF404040007FFF00000000007F007F7F00
        7FFF000000007FFF00000000007F007F7F404040808080808080BFBFBFBFBFBF
        40404000007F003F7F00003F003F3F003F7F00003F00007F003F3F00007F003F
        7F404040808080808080BFBFBFBFBFBF40404000000000000000000000000000
        0000000000000000000000000000000000404040808080808080BFBFBFDFDFDF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF9F9F9F8080809F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF808080404040404040
        4040404040404040404040404040404040404040404040404040404040404040
        40404040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Button2: TBitBtn
      Left = 409
      Top = 3
      Width = 97
      Height = 26
      Hint = 'Grabar Incapacidad digitada'
      Caption = '&Grabar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
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
    object Button1: TBitBtn
      Left = 601
      Top = 3
      Width = 105
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
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
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFF494949
        242424242424494949494949494949242424242424494949FFFFFFFF49DBDBDB
        49494949494949DBDBDBDBDBDBDB49494949494949DBDBDB49FFFFFF49DBDBDB
        DBDBDBDBDBDBB66D6D6D6D6D6D6DB6DBDBDBDBDBDBDBDBDB49FFFFFF49DBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FFFFFF49B6B6B6
        B600000000000000000000000000000000000000B6B6B6B649FFFF496D6D6D6D
        6D494949494949494949494949494949494949496D6D6D6D6D49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDB6DDB6DDB6DDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF496D6D6D6D
        6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBDBDBECDBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBB6DBDBDB14DBDBDBDBDBDBDBDBDBDBDBDBDBDB49FF49DBDBDBDB
        DBDBDBDBDBDBDBDBB6494949B6DBDBDBDBDBDBDBDBDBDBDBDB49FFFF49494949
        494949494949494949DB49DB49494949494949494949494949FFFFFFFFFFFF49
        49DB49DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB499249FFFFFFFFFFFFFFFFFF49
        6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFF49
        6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFF49
        6DDB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49DB49FFFFFFFFFFFFFFFFFFFF
        49DB49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4949FFFFFFFFFFFFFFFFFFFFFF
        FF4949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF494949494949494949494949494949494949FFFFFFFFFFFF}
    end
    object btneliminar: TBitBtn
      Left = 219
      Top = 3
      Width = 123
      Height = 27
      Caption = '&Eliminar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btneliminarClick
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 339
    Align = alTop
    TabOrder = 0
    object Label24: TLabel
      Left = 204
      Top = 20
      Width = 329
      Height = 23
      Caption = 'DIGITACION DE  INCAPACIDADES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 617
      Top = 1
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
    object Label2: TLabel
      Left = 48
      Top = 59
      Width = 108
      Height = 15
      Caption = 'Numero de la Incapacidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 428
      Top = 59
      Width = 136
      Height = 15
      Caption = 'Numero de remision Incapacidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 21
      Top = 40
      Width = 760
      Height = 8
      TabOrder = 1
      object Button8: TButton
        Left = 288
        Top = 8
        Width = 33
        Height = 1
        Caption = 'Button8'
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 19
      Top = 76
      Width = 696
      Height = 255
      Caption = 'Datos  de la Incapacidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 119
        Top = 10
        Width = 86
        Height = 15
        Caption = 'Tipo de  Incapacidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 18
        Top = 43
        Width = 65
        Height = 15
        Caption = 'T.Doc Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 92
        Top = 44
        Width = 82
        Height = 15
        Caption = 'Num. Doc Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 572
        Top = 9
        Width = 91
        Height = 15
        Caption = 'Fecha  de Expedicion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 352
        Top = 45
        Width = 142
        Height = 15
        Caption = 'Nombre o Razon Social  Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 17
        Top = 76
        Width = 60
        Height = 15
        Caption = 'T. Doc Afiliado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 102
        Top = 77
        Width = 74
        Height = 15
        Caption = 'Num. Doc Afiliado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 230
        Top = 77
        Width = 21
        Height = 15
        Caption = 'Edad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 382
        Top = 76
        Width = 83
        Height = 15
        Caption = 'Nombre  del Afiliado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 298
        Top = 109
        Width = 101
        Height = 15
        Caption = 'Nombre  del Diagnostico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 18
        Top = 109
        Width = 79
        Height = 15
        Caption = 'Codigo Diagnostico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 17
        Top = 142
        Width = 67
        Height = 15
        Caption = 'Fecha Iniciacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 116
        Top = 143
        Width = 54
        Height = 15
        Caption = 'Numero Dias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 206
        Top = 143
        Width = 128
        Height = 15
        Caption = 'Dias de Incapacidad o Licencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 399
        Top = 143
        Width = 32
        Height = 15
        Caption = 'Finaliza'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 29
        Top = 176
        Width = 62
        Height = 15
        Caption = 'Codigo Medico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 287
        Top = 176
        Width = 255
        Height = 15
        Caption = 'Nombre del medico u Odontologo que  expide la  incapacidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 44
        Top = 214
        Width = 65
        Height = 15
        Caption = 'Dias Liquidados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 169
        Top = 214
        Width = 104
        Height = 15
        Caption = 'Salario Base  Liquidacion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 345
        Top = 214
        Width = 126
        Height = 15
        Caption = 'Salario Promedio para Liquidar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 526
        Top = 214
        Width = 102
        Height = 15
        Caption = 'Valor  Total  Incapacidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 260
        Top = 77
        Width = 22
        Height = 15
        Caption = 'Sexo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 551
        Top = 142
        Width = 85
        Height = 15
        Caption = 'Numero Incapacidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 644
        Top = 143
        Width = 20
        Height = 15
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 480
        Top = 9
        Width = 52
        Height = 15
        Caption = 'Fecha Fallo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 366
        Top = 9
        Width = 72
        Height = 15
        Caption = 'N'#250'mero de Fallo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object rgtipoincapacidad: TComboBox
        Left = 14
        Top = 22
        Width = 323
        Height = 21
        Hint = 'Selecione  el Tipo de Incapacidad '
        AutoDropDown = True
        Style = csDropDownList
        CharCase = ecUpperCase
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
        TabOrder = 0
        OnExit = rgtipoincapacidadExit
        Items.Strings = (
          'ENFERMEDAD GENERAL AMBULATORIA'
          'ENFERMEDAD GENERAL HOSPITALARIO'
          'LICENCIA  DE  MATERNIDAD'
          'LICENCIA  DE  PATERNIDAD'
          'INCAPACIDADES POR RIESGOS PROFESIONALES (ARP)'
          'INCAPACIDES POR SOAT')
      end
      object cbtipodocempresa: TComboBox
        Left = 14
        Top = 56
        Width = 55
        Height = 21
        Hint = 
          'Selecione el tipo de  documento de la  empresa  donce se origino' +
          '  la incapacidad'
        Style = csDropDownList
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DropDownCount = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImeMode = imAlpha
        ItemHeight = 13
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = cbtipodocempresaExit
        Items.Strings = (
          'CC'
          'NIT'
          'CE'
          'TI')
      end
      object edtnumdocempresa: TEdit
        Left = 86
        Top = 57
        Width = 117
        Height = 21
        Hint = 'Digite  el Numero  de Docuemnto del la  empresa'
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = EDTNUMDOCEMPRESAEXIT
      end
      object dtpfecexpedicion: TDateTimePicker
        Left = 572
        Top = 22
        Width = 96
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Date = 38610.000000000000000000
        Format = 'dd/MM/yyyyy'
        Time = 38610.000000000000000000
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
        OnExit = dtpfecexpedicionExit
      end
      object edtnombreempresa: TEdit
        Left = 237
        Top = 57
        Width = 431
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 21
      end
      object cbtipodocafiliado: TComboBox
        Left = 14
        Top = 90
        Width = 58
        Height = 21
        Style = csDropDownList
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        DropDownCount = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImeMode = imAlpha
        ItemHeight = 13
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = cbtipodocafiliadoExit
        Items.Strings = (
          'CC'
          'CE'
          'TI')
      end
      object edtnumdocafiliadoin: TEdit
        Left = 86
        Top = 90
        Width = 116
        Height = 21
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
        TabOrder = 8
        OnExit = edtnumdocafiliadoinExit
      end
      object edtsexo: TEdit
        Left = 258
        Top = 89
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object edtedad: TEdit
        Left = 230
        Top = 89
        Width = 24
        Height = 21
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object edtnombreafiliado: TEdit
        Left = 293
        Top = 88
        Width = 377
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 24
      end
      object edtcoddiagnostico: TEdit
        Left = 14
        Top = 122
        Width = 87
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = edtcoddiagnosticoExit
      end
      object edtnombrediagnostico: TEdit
        Left = 150
        Top = 122
        Width = 520
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 25
      end
      object dtpfeciniciacion: TDateTimePicker
        Left = 14
        Top = 156
        Width = 91
        Height = 21
        BiDiMode = bdRightToLeft
        Date = 38610.000000000000000000
        Time = 38610.000000000000000000
        Checked = False
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = dtpfeciniciacionExit
      end
      object edtdiasincapacidad: TEdit
        Left = 121
        Top = 156
        Width = 41
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = edtdiasincapacidadExit
      end
      object valorletradias: TEdit
        Left = 173
        Top = 157
        Width = 208
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 26
      end
      object edtfinal: TEdit
        Left = 384
        Top = 157
        Width = 87
        Height = 21
        CharCase = ecUpperCase
        Color = clActiveBorder
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object chprorroga: TCheckBox
        Left = 476
        Top = 158
        Width = 73
        Height = 17
        Caption = 'Prorroga'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = chprorrogaClick
      end
      object edtcodprestador: TEdit
        Left = 14
        Top = 188
        Width = 118
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = edtcodprestadorExit
      end
      object edtnombreprestador: TEdit
        Left = 170
        Top = 189
        Width = 501
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object edtdiasliquidados: TEdit
        Left = 51
        Top = 228
        Width = 47
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 28
      end
      object edtsalariobase: TEdit
        Left = 159
        Top = 228
        Width = 122
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
      end
      object edtproliquidacion: TEdit
        Left = 345
        Top = 227
        Width = 130
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnExit = edtproliquidacionExit
      end
      object edtvalorliquidado: TEdit
        Left = 520
        Top = 227
        Width = 134
        Height = 21
        BiDiMode = bdRightToLeft
        CharCase = ecUpperCase
        Color = clBtnFace
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 29
      end
      object Edit1: TEdit
        Left = 551
        Top = 156
        Width = 86
        Height = 21
        CharCase = ecUpperCase
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnExit = Edit1Exit
        OnKeyPress = EDTDIASINCAPACIDADKEYPRESS
      end
      object Edit2: TEdit
        Left = 642
        Top = 156
        Width = 28
        Height = 21
        Color = cl3DLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
      end
      object Button4: TButton
        Left = 208
        Top = 57
        Width = 24
        Height = 20
        Caption = '...'
        TabOrder = 6
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 204
        Top = 91
        Width = 25
        Height = 20
        Caption = '...'
        TabOrder = 9
        OnClick = Button5Click
      end
      object Button6T: TButton
        Left = 112
        Top = 122
        Width = 25
        Height = 20
        Caption = '...'
        TabOrder = 11
        OnClick = Button6TClick
      end
      object Button7: TButton
        Left = 138
        Top = 188
        Width = 25
        Height = 20
        Caption = '...'
        TabOrder = 16
        OnClick = Button7Click
      end
      object dtpfecfallo: TDateTimePicker
        Left = 464
        Top = 22
        Width = 96
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Date = 38610.000000000000000000
        Format = 'dd/MM/yyyyy'
        Time = 38610.000000000000000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = dtpfecexpedicionExit
      end
      object edtfallo: TEdit
        Left = 346
        Top = 22
        Width = 105
        Height = 21
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Edtnumero: TEdit
      Left = 171
      Top = 55
      Width = 113
      Height = 21
      Hint = 'Digite el Numero de Incapacidad  preimpreso  en el formulario'
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
      TabOrder = 0
      OnExit = EdtnumeroExit
      OnKeyPress = EDTDIASINCAPACIDADKEYPRESS
    end
  end
  object Edit3: TEdit
    Left = 570
    Top = 54
    Width = 107
    Height = 21
    Hint = 'Digite el Numero de Incapacidad  preimpreso  en el formulario'
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
    TabOrder = 1
    OnEnter = Edit3Enter
    OnExit = Edit3Exit
    OnKeyPress = EDTDIASINCAPACIDADKEYPRESS
  end
  object qryafiliados: TQuery
    Left = 360
    Top = 400
  end
  object qryincausuario: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      
        'select autoliquidacion.emp_tipo_doc,autoliquidacion.emp_numero_d' +
        'oc,autoliquidacion.fec_pago,det_planilla_autoliquidacion.*,autol' +
        'iquidacion.cod_regional,autoliquidacion.cod_oficina,autoliquidac' +
        'ion.tip_doc_usuario,autoliquidacion.num_doc_usuario'
      'from autoliquidacion det_planilla_autoliquidacion'
      
        'where autoliquidacion.num_planilla = det_planilla_autoliquidacio' +
        'n.num_planilla'
      
        'and (convert(datetime,('#39'01/'#39'+ det_planilla_autoliquidacion.per_c' +
        'otizacion),103))  >= "2001/06/01"'
      
        'and afi_tipo_doc = :'#39'CC'#39' and afi_numero_doc = :'#39'doc'#39' order by co' +
        'nvert(datetime,('#39'01/'#39'+ det_planilla_autoliquidacion.per_cotizaci' +
        'on))')
    Left = 160
    Top = 398
    ParamData = <
      item
        DataType = ftString
        Name = 'CC'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'doc'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object QRCompositeReport1: TQRCompositeReport
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 326
    Top = 72
  end
  object buscarprorroga: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIPO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUMERO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'DIAG'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from incapacidades'
      'where afi_tipo_dOC  =:TIPO'
      'AND    AFI_NUMERO_DOC =:NUMERO'
      'AND    COD_DIAGNOSTICO =:DIAG')
    Left = 560
    Top = 400
    object buscarprorrogaNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object buscarprorrogaTIP_INCAPACIDAD: TStringField
      FieldName = 'TIP_INCAPACIDAD'
      Size = 3
    end
    object buscarprorrogaFEC_EXPEDICION: TDateTimeField
      FieldName = 'FEC_EXPEDICION'
    end
    object buscarprorrogaTIP_DOCEMPRESA: TStringField
      FieldName = 'TIP_DOCEMPRESA'
      Size = 3
    end
    object buscarprorrogaNUM_DOCEMPRESA: TStringField
      FieldName = 'NUM_DOCEMPRESA'
      Size = 18
    end
    object buscarprorrogaAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object buscarprorrogaAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object buscarprorrogaCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 4
    end
    object buscarprorrogaCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Size = 15
    end
    object buscarprorrogaNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Size = 255
    end
    object buscarprorrogaDIA_INCAPACIDAD: TStringField
      FieldName = 'DIA_INCAPACIDAD'
      Size = 2
    end
    object buscarprorrogaDIA_LIQUIDADOS: TStringField
      FieldName = 'DIA_LIQUIDADOS'
      Size = 2
    end
    object buscarprorrogaFEC_INICIO: TDateTimeField
      FieldName = 'FEC_INICIO'
    end
    object buscarprorrogaPRO_INCAPACIDAD: TStringField
      FieldName = 'PRO_INCAPACIDAD'
      Size = 1
    end
    object buscarprorrogaSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object buscarprorrogaPRO_SALARIO_LIQUI: TBCDField
      FieldName = 'PRO_SALARIO_LIQUI'
      Precision = 18
      Size = 0
    end
    object buscarprorrogaVAL_INCAPACIDAD: TBCDField
      FieldName = 'VAL_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object buscarprorrogaEST_INCAPACIDAD: TStringField
      FieldName = 'EST_INCAPACIDAD'
      Size = 3
    end
    object buscarprorrogaCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object buscarprorrogaCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object buscarprorrogaFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object buscarprorrogaTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object buscarprorrogaTIP_NUM_USUARIO: TStringField
      FieldName = 'TIP_NUM_USUARIO'
      Size = 15
    end
    object buscarprorrogaFEC_TERMINACION: TDateTimeField
      FieldName = 'FEC_TERMINACION'
    end
    object buscarprorrogaFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object buscarprorrogaNO_PRORROGA: TStringField
      FieldName = 'NO_PRORROGA'
      Size = 15
    end
    object buscarprorrogaTOT_DIAS_PRORROGA: TStringField
      FieldName = 'TOT_DIAS_PRORROGA'
      Size = 3
    end
    object buscarprorrogaNUM_RECEPCION: TStringField
      FieldName = 'NUM_RECEPCION'
      Size = 15
    end
    object buscarprorrogaFEC_NOTIFICACION: TDateTimeField
      FieldName = 'FEC_NOTIFICACION'
    end
    object buscarprorrogaMED_NOTIFICACION: TStringField
      FieldName = 'MED_NOTIFICACION'
      Size = 50
    end
    object buscarprorrogaNO_GUIA: TStringField
      FieldName = 'NO_GUIA'
      Size = 50
    end
  end
  object qrydetalle: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'numin'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DET_INCAPACIDAD'
      'where num_incapacidad =:numin')
    Left = 600
    Top = 400
    object qrydetalleNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qrydetallePER_PAGO_INCAP: TDateTimeField
      FieldName = 'PER_PAGO_INCAP'
    end
    object qrydetalleNUM_COMPROBANTE: TStringField
      FieldName = 'NUM_COMPROBANTE'
      Size = 15
    end
    object qrydetalleDIA_PAGAR_INCAP: TBCDField
      FieldName = 'DIA_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qrydetalleVAL_PAGAR_INCAP: TBCDField
      FieldName = 'VAL_PAGAR_INCAP'
      Precision = 18
      Size = 0
    end
    object qrydetalleTIP_PAGO_INCAP: TStringField
      FieldName = 'TIP_PAGO_INCAP'
      Size = 1
    end
    object qrydetalleFEC_PAGO_INCAP: TDateTimeField
      FieldName = 'FEC_PAGO_INCAP'
    end
    object qrydetallePER_PRESENTADO: TStringField
      FieldName = 'PER_PRESENTADO'
      Size = 7
    end
    object qrydetalleEST_DET_PLANILLA: TStringField
      FieldName = 'EST_DET_PLANILLA'
      Size = 3
    end
    object qrydetalleVAL_DESCONTADO: TBCDField
      FieldName = 'VAL_DESCONTADO'
      Precision = 18
      Size = 0
    end
  end
  object qrybuscarcompensacion2: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIP_DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUM_DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'AINI'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'MESINI'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT PER_COTIZACION FROM DET_PLANILLA_AUTOLIQUIDACION WHERE '
      'AFI_TIPO_DOC= :TIP_DOC AND'
      'AFI_NUMERO_DOC= :'#39'NUM_DOC'#39' AND'
      'DET_ESTADO=5 AND'
      
        'SUBSTRING(PER_COTIZACION,3,4) >= :AINI AND SUBSTRING(PER_COTIZAC' +
        'ION,1,2) >= :MESINI'
      
        'ORDER BY SUBSTRING(PER_COTIZACION,3,4)DESC,SUBSTRING(PER_COTIZAC' +
        'ION,1,2) DESC')
    Left = 424
    Top = 402
    object qrybuscarcompensacion2PER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
  end
  object qryaprobaciones: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CAUSAL'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM APROBACIONES WHERE CAUSAL_DE_NO_APROBACION= :CAUSA' +
        'L')
    Left = 306
    Top = 398
    object qryaprobacionesACTIVADO: TBooleanField
      FieldName = 'ACTIVADO'
    end
    object qryaprobacionesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object qryaprobacionesCAUSAL_DE_NO_APROBACION: TStringField
      FieldName = 'CAUSAL_DE_NO_APROBACION'
      Size = 100
    end
  end
  object qrybuscarcompensacion: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIP_DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUM_DOC'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end
      item
        Name = 'AINI'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'MESINI'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT PER_COTIZACION FROM DET_PLANILLA_AUTOLIQUIDACION WHERE '
      'AFI_TIPO_DOC= :TIP_DOC AND'
      'AFI_NUMERO_DOC= :'#39'NUM_DOC'#39' AND'
      '--DET_ESTADO=5 AND'
      
        'SUBSTRING(PER_COTIZACION,4,4) <= :AINI AND SUBSTRING(PER_COTIZAC' +
        'ION,1,2) <= :MESINI'
      
        'ORDER BY SUBSTRING(PER_COTIZACION,4,4)DESC,SUBSTRING(PER_COTIZAC' +
        'ION,1,2) DESC')
    Left = 466
    Top = 402
    object qrybuscarcompensacionPER_COTIZACION: TStringField
      FieldName = 'PER_COTIZACION'
      Size = 7
    end
  end
  object qrycartapresentacion: TADOQuery
    Connection = DataModule1.DTBDATAMEC
    Parameters = <
      item
        Name = 'numinca'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      
        'from incapacidades as a, empresas as b, ciudades as c, afiliados' +
        ' as d, departamentos as e'
      'where a.tip_docempresa = b.tip_documento '
      'and a.num_docempresa = b.num_documento'
      'and b.cod_departamento = c.cod_departamento'
      'and b.cod_ciudad = c.cod_ciudad'
      'and a.afi_tipo_doc = d.tip_documento'
      'and a.afi_numero_doc = d.num_documento'
      'and num_incapacidad =:numinca'
      'and b.cod_departamento = e.cod_departamento')
    Left = 528
    Top = 400
    object qrycartapresentacionNUM_INCAPACIDAD: TStringField
      FieldName = 'NUM_INCAPACIDAD'
      Size = 15
    end
    object qrycartapresentacionTIP_INCAPACIDAD: TStringField
      FieldName = 'TIP_INCAPACIDAD'
      Size = 3
    end
    object qrycartapresentacionFEC_EXPEDICION: TDateTimeField
      FieldName = 'FEC_EXPEDICION'
    end
    object qrycartapresentacionFEC_FALLO_TUTELA: TDateTimeField
      FieldName = 'FEC_FALLO_TUTELA'
    end
    object qrycartapresentacionNUMERO_TUTELA: TStringField
      FieldName = 'NUMERO_TUTELA'
      Size = 50
    end
    object qrycartapresentacionTIP_DOCEMPRESA: TStringField
      FieldName = 'TIP_DOCEMPRESA'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCEMPRESA: TStringField
      FieldName = 'NUM_DOCEMPRESA'
      Size = 18
    end
    object qrycartapresentacionAFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Size = 3
    end
    object qrycartapresentacionAFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Size = 18
    end
    object qrycartapresentacionCOD_DIAGNOSTICO: TStringField
      FieldName = 'COD_DIAGNOSTICO'
      Size = 4
    end
    object qrycartapresentacionCOD_PRESTADOR: TStringField
      FieldName = 'COD_PRESTADOR'
      Size = 15
    end
    object qrycartapresentacionNOM_PRESTADOR: TStringField
      FieldName = 'NOM_PRESTADOR'
      Size = 255
    end
    object qrycartapresentacionDIA_INCAPACIDAD: TStringField
      FieldName = 'DIA_INCAPACIDAD'
      Size = 2
    end
    object qrycartapresentacionDIA_LIQUIDADOS: TStringField
      FieldName = 'DIA_LIQUIDADOS'
      Size = 2
    end
    object qrycartapresentacionFEC_INICIO: TDateTimeField
      FieldName = 'FEC_INICIO'
    end
    object qrycartapresentacionPRO_INCAPACIDAD: TStringField
      FieldName = 'PRO_INCAPACIDAD'
      Size = 1
    end
    object qrycartapresentacionSAL_BASE: TBCDField
      FieldName = 'SAL_BASE'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionPRO_SALARIO_LIQUI: TBCDField
      FieldName = 'PRO_SALARIO_LIQUI'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionVAL_INCAPACIDAD: TBCDField
      FieldName = 'VAL_INCAPACIDAD'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionEST_INCAPACIDAD: TStringField
      FieldName = 'EST_INCAPACIDAD'
      Size = 3
    end
    object qrycartapresentacionCOD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Size = 5
    end
    object qrycartapresentacionCOD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Size = 3
    end
    object qrycartapresentacionFEC_DIGITACION: TDateTimeField
      FieldName = 'FEC_DIGITACION'
    end
    object qrycartapresentacionTIP_DOC_USUARIO: TStringField
      FieldName = 'TIP_DOC_USUARIO'
      Size = 3
    end
    object qrycartapresentacionTIP_NUM_USUARIO: TStringField
      FieldName = 'TIP_NUM_USUARIO'
      Size = 15
    end
    object qrycartapresentacionFEC_TERMINACION: TDateTimeField
      FieldName = 'FEC_TERMINACION'
    end
    object qrycartapresentacionFEC_MODIFICACION: TDateTimeField
      FieldName = 'FEC_MODIFICACION'
    end
    object qrycartapresentacionNO_PRORROGA: TStringField
      FieldName = 'NO_PRORROGA'
      Size = 15
    end
    object qrycartapresentacionTOT_DIAS_PRORROGA: TStringField
      FieldName = 'TOT_DIAS_PRORROGA'
      Size = 3
    end
    object qrycartapresentacionNUM_RECEPCION: TStringField
      FieldName = 'NUM_RECEPCION'
      Size = 15
    end
    object qrycartapresentacionFEC_NOTIFICACION: TDateTimeField
      FieldName = 'FEC_NOTIFICACION'
    end
    object qrycartapresentacionMED_NOTIFICACION: TStringField
      FieldName = 'MED_NOTIFICACION'
      Size = 50
    end
    object qrycartapresentacionNO_GUIA: TStringField
      FieldName = 'NO_GUIA'
      Size = 50
    end
    object qrycartapresentacionTIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Size = 18
    end
    object qrycartapresentacionNOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Size = 100
    end
    object qrycartapresentacionREP_EMPRESA: TStringField
      FieldName = 'REP_EMPRESA'
      Size = 100
    end
    object qrycartapresentacionDIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Size = 50
    end
    object qrycartapresentacionTEL_EPS: TStringField
      FieldName = 'TEL_EPS'
    end
    object qrycartapresentacionFAX_EPS: TStringField
      FieldName = 'FAX_EPS'
    end
    object qrycartapresentacionEML_EPS: TStringField
      FieldName = 'EML_EPS'
      Size = 50
    end
    object qrycartapresentacionDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 2
    end
    object qrycartapresentacionCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Size = 3
    end
    object qrycartapresentacionCOD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Size = 2
    end
    object qrycartapresentacionTIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Size = 10
    end
    object qrycartapresentacionCOD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Size = 4
    end
    object qrycartapresentacionCOD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Size = 2
    end
    object qrycartapresentacionCOD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Size = 3
    end
    object qrycartapresentacionCOD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Size = 5
    end
    object qrycartapresentacionTIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Size = 18
    end
    object qrycartapresentacionCOD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Size = 2
    end
    object qrycartapresentacionCOD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Size = 3
    end
    object qrycartapresentacionFEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
    end
    object qrycartapresentacionTEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
    end
    object qrycartapresentacionTEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
    end
    object qrycartapresentacionURL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
    end
    object qrycartapresentacionEML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Size = 50
    end
    object qrycartapresentacionTOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Size = 10
    end
    object qrycartapresentacionCOD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Size = 1
    end
    object qrycartapresentacionCOD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Size = 3
    end
    object qrycartapresentacionCOD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Size = 2
    end
    object qrycartapresentacionCOD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Size = 3
    end
    object qrycartapresentacionCOD_PRESENTACION_cOM: TStringField
      FieldName = 'COD_PRESENTACION_cOM'
      Size = 1
    end
    object qrycartapresentacionCOD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Size = 1
    end
    object qrycartapresentacionTIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Size = 18
    end
    object qrycartapresentacionclave: TStringField
      FieldName = 'clave'
      Size = 4
    end
    object qrycartapresentacionNOM_EMPRESA_BDUA: TStringField
      FieldName = 'NOM_EMPRESA_BDUA'
      Size = 100
    end
    object qrycartapresentacionDIGITO_VERIFICACION: TStringField
      FieldName = 'DIGITO_VERIFICACION'
      Size = 1
    end
    object qrycartapresentacionCARGO_REPRESENTANTE: TStringField
      FieldName = 'CARGO_REPRESENTANTE'
      Size = 30
    end
    object qrycartapresentacionTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
    end
    object qrycartapresentacionNOMBRE_CONTACTO: TStringField
      FieldName = 'NOMBRE_CONTACTO'
      Size = 50
    end
    object qrycartapresentacionCARGO_CONTACTO: TStringField
      FieldName = 'CARGO_CONTACTO'
      Size = 30
    end
    object qrycartapresentacionTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
    end
    object qrycartapresentacionCLASE_APORTANTE: TStringField
      FieldName = 'CLASE_APORTANTE'
      Size = 10
    end
    object qrycartapresentacionCOD_ARP: TStringField
      FieldName = 'COD_ARP'
      Size = 10
    end
    object qrycartapresentacionCOD_ARP_BUDA: TStringField
      FieldName = 'COD_ARP_BUDA'
      Size = 10
    end
    object qrycartapresentacionBARRIO: TBCDField
      FieldName = 'BARRIO'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionCOD_DEPARTAMENTO_1: TStringField
      FieldName = 'COD_DEPARTAMENTO_1'
      Size = 2
    end
    object qrycartapresentacionCOD_CIUDAD_1: TStringField
      FieldName = 'COD_CIUDAD_1'
      Size = 3
    end
    object qrycartapresentacionNOM_CIUDAD: TStringField
      FieldName = 'NOM_CIUDAD'
      Size = 35
    end
    object qrycartapresentacionPOR_ALTO_RIE: TStringField
      FieldName = 'POR_ALTO_RIE'
      Size = 3
    end
    object qrycartapresentacionCOD_REGIONAL_2: TStringField
      FieldName = 'COD_REGIONAL_2'
      Size = 5
    end
    object qrycartapresentacionVALOR_UPC: TBCDField
      FieldName = 'VALOR_UPC'
      Precision = 18
      Size = 2
    end
    object qrycartapresentacionCEN_COSTO: TStringField
      FieldName = 'CEN_COSTO'
      Size = 15
    end
    object qrycartapresentacionCONS_RS: TStringField
      FieldName = 'CONS_RS'
      FixedChar = True
      Size = 1
    end
    object qrycartapresentacionFAC_PRESENTA: TStringField
      FieldName = 'FAC_PRESENTA'
      FixedChar = True
      Size = 1
    end
    object qrycartapresentacionFORMATOOTROSI: TStringField
      FieldName = 'FORMATOOTROSI'
      FixedChar = True
      Size = 1
    end
    object qrycartapresentacionFOR_PAGO: TStringField
      FieldName = 'FOR_PAGO'
      Size = 1
    end
    object qrycartapresentacionTIP_DOCUMENTO_1: TStringField
      FieldName = 'TIP_DOCUMENTO_1'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_1: TStringField
      FieldName = 'NUM_DOCUMENTO_1'
      Size = 18
    end
    object qrycartapresentacionCOD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Size = 1
    end
    object qrycartapresentacionCOD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Size = 1
    end
    object qrycartapresentacionCOD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Size = 1
    end
    object qrycartapresentacionCOD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Size = 1
    end
    object qrycartapresentacionCOD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Size = 3
    end
    object qrycartapresentacionCOD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Size = 3
    end
    object qrycartapresentacionCOD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Size = 3
    end
    object qrycartapresentacionCOD_ESTADO_1: TStringField
      FieldName = 'COD_ESTADO_1'
      Size = 2
    end
    object qrycartapresentacionCOD_OFICINA_2: TStringField
      FieldName = 'COD_OFICINA_2'
      Size = 3
    end
    object qrycartapresentacionCOD_REGIONAL_3: TStringField
      FieldName = 'COD_REGIONAL_3'
      Size = 5
    end
    object qrycartapresentacionPRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Size = 30
    end
    object qrycartapresentacionSEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Size = 30
    end
    object qrycartapresentacionPRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Size = 30
    end
    object qrycartapresentacionSEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Size = 30
    end
    object qrycartapresentacionFEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
    end
    object qrycartapresentacionFEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
    end
    object qrycartapresentacionFEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
    end
    object qrycartapresentacionEPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Size = 3
    end
    object qrycartapresentacionEPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Size = 18
    end
    object qrycartapresentacionCOD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Size = 2
    end
    object qrycartapresentacionCOD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Size = 3
    end
    object qrycartapresentacionCOD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Size = 3
    end
    object qrycartapresentacionCOD_ZONA_1: TStringField
      FieldName = 'COD_ZONA_1'
      Size = 3
    end
    object qrycartapresentacionACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Size = 3
    end
    object qrycartapresentacionACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Size = 18
    end
    object qrycartapresentacionCOD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Size = 1
    end
    object qrycartapresentacionNUM_SEMANA_COTIZA: TBCDField
      FieldName = 'NUM_SEMANA_COTIZA'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionFEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
    end
    object qrycartapresentacionNUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Size = 10
    end
    object qrycartapresentacionDIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Size = 50
    end
    object qrycartapresentacionTEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
    end
    object qrycartapresentacionTEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
    end
    object qrycartapresentacionCEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
    end
    object qrycartapresentacionEML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Size = 50
    end
    object qrycartapresentacionFEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
    end
    object qrycartapresentacionTIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Size = 18
    end
    object qrycartapresentacionTIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Size = 18
    end
    object qrycartapresentacionTIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Size = 3
    end
    object qrycartapresentacionNUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Size = 18
    end
    object qrycartapresentacionSEM_COTIZACION: TBCDField
      FieldName = 'SEM_COTIZACION'
      Precision = 18
      Size = 0
    end
    object qrycartapresentacionCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 1
    end
    object qrycartapresentacionCOD_CLA_AFILIACION: TStringField
      FieldName = 'COD_CLA_AFILIACION'
      Size = 1
    end
    object qrycartapresentacionAFI_FONETICO: TStringField
      FieldName = 'AFI_FONETICO'
      Size = 60
    end
    object qrycartapresentacionAFI_CAU_ESTADO: TIntegerField
      FieldName = 'AFI_CAU_ESTADO'
    end
    object qrycartapresentacionAFI_TRA_CODIGO: TStringField
      FieldName = 'AFI_TRA_CODIGO'
      Size = 1
    end
    object qrycartapresentacionCOD_DEPARTAMENTO_2: TStringField
      FieldName = 'COD_DEPARTAMENTO_2'
      Size = 2
    end
    object qrycartapresentacionNOM_DEPARTAMENTO: TStringField
      FieldName = 'NOM_DEPARTAMENTO'
      Size = 35
    end
    object qrycartapresentacionDISTRITOS: TStringField
      FieldName = 'DISTRITOS'
      Size = 2
    end
  end
end

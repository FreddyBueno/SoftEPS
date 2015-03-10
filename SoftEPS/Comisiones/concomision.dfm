object Form1: TForm1
  Left = 192
  Top = 107
  Width = 598
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 2
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 14
    PrinterSettings.LastPage = 14
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        177.270833333333
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 166
        Top = 12
        Width = 350
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          439.208333333333
          31.75
          926.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REDSALUD ATENCION HUMANA EPS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel7: TQRLabel
        Left = 128
        Top = 36
        Width = 428
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          338.666666666667
          95.25
          1132.41666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'INFORME DE COMISIONES ASESORES COMERCIALES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 126
      Width = 718
      Height = 77
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        203.729166666667
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 60
        Top = 16
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          158.75
          42.3333333333333
          269.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'TIP_DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 184
        Top = 16
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          42.3333333333333
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'PRI_APELLIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 342
        Top = 16
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          904.875
          42.3333333333333
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'PRI_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 84
        Top = 16
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          222.25
          42.3333333333333
          288.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'NUM_DOCUMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 256
        Top = 16
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          677.333333333333
          42.3333333333333
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'SEG_APELLIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 474
        Top = 14
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1254.125
          37.0416666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Regional:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 540
        Top = 14
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1428.75
          37.0416666666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'COD_REGIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 34
        Width = 709
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          89.9583333333333
          1875.89583333333)
        Shape = qrsHorLine
      end
      object QRLabel6: TQRLabel
        Left = 6
        Top = 14
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          15.875
          37.0416666666667
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Asesor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 30
        Top = 60
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          79.375
          158.75
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Afiliado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 354
        Top = 58
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          936.625
          153.458333333333
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Empresa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 0
        Top = -6
        Width = 709
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          -15.875
          1875.89583333333)
        Shape = qrsHorLine
      end
      object QRLabel9: TQRLabel
        Left = 634
        Top = 60
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1677.45833333333
          158.75
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fecha'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 570
        Top = 14
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1508.125
          37.0416666666667
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query1
        DataField = 'NOM_REGIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 564
        Top = 14
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1492.25
          37.0416666666667
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand2
      Size.Values = (
        55.5625
        1899.70833333333)
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 203
      Width = 718
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand2
      Size.Values = (
        50.2708333333333
        1899.70833333333)
      Master = QuickRep1
      DataSet = Query2
      FooterBand = QRBand3
      PrintBefore = False
      PrintIfEmpty = False
      object QRDBText3: TQRDBText
        Left = 200
        Top = 2
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          529.166666666667
          5.29166666666667
          195.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'SEG_APELLIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 30
        Top = 2
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          79.375
          5.29166666666667
          291.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'TIP_DOCUMENTO_AFI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 128
        Top = 2
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          5.29166666666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'PRI_APELLIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 52
        Top = 2
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          137.583333333333
          5.29166666666667
          306.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'NUM_DOCUMENTO_AFI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 380
        Top = 2
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1005.41666666667
          5.29166666666667
          259.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'EMP_NUMERO_DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 274
        Top = 2
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          724.958333333333
          5.29166666666667
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'PRI_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 448
        Top = 2
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          5.29166666666667
          447.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'NOM_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 354
        Top = 2
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          936.625
          5.29166666666667
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'EMP_TIPO_DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 634
        Top = 2
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1677.45833333333
          5.29166666666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Query2
        DataField = 'FEC_CORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 222
      Width = 718
      Height = 84
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand2
      Size.Values = (
        222.25
        1899.70833333333)
      BandType = rbGroupFooter
      object QRShape1: TQRShape
        Left = 2
        Top = 20
        Width = 161
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          5.29166666666667
          52.9166666666667
          425.979166666667)
        Brush.Color = clSilver
        Shape = qrsRectangle
      end
      object QRExpr1: TQRExpr
        Left = 112
        Top = 22
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          296.333333333333
          58.2083333333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Color = clSilver
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 22
        Width = 101
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          10.5833333333333
          58.2083333333333
          267.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Afiliados :'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 2
        Top = 42
        Width = 709
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          5.29166666666667
          111.125
          1875.89583333333)
        Shape = qrsHorLine
      end
      object QRLabel8: TQRLabel
        Left = 598
        Top = 58
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1582.20833333333
          153.458333333333
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SOFTEPS VER 1.0'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 2
        Top = 56
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          5.29166666666667
          148.166666666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pagina :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 56
        Top = 56
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          148.166666666667
          148.166666666667
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'PAGENUMBER'
        FontSize = 10
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'softeps'
    SQL.Strings = (
      'SELECT * FROM ACESORES, REGIONALES'
      'WHERE ACESORES.COD_REGIONAL = REGIONALES.COD_REGIONAL'
      'ORDER BY ACESORES.COD_REGIONAL,TIP_DOCUMENTO, NUM_DOCUMENTO')
    Left = 54
    Top = 14
    object Query1TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.TIP_DOCUMENTO'
      Size = 3
    end
    object Query1COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.ACESORES.COD_ESTADO'
      Size = 2
    end
    object Query1NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.ACESORES.NUM_DOCUMENTO'
      Size = 18
    end
    object Query1PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.PRI_APELLIDO'
      Size = 25
    end
    object Query1SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.ACESORES.SEG_APELLIDO'
      Size = 25
    end
    object Query1PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.PRI_NOMBRE'
      Size = 25
    end
    object Query1SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.ACESORES.SEG_NOMBRE'
      Size = 25
    end
    object Query1COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.ACESORES.COD_REGIONAL'
      Size = 3
    end
    object Query1TIP_CONTRATO: TStringField
      FieldName = 'TIP_CONTRATO'
      Origin = 'SOFTEPS.ACESORES.TIP_CONTRATO'
      Size = 1
    end
    object Query1COD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'SOFTEPS.ACESORES.TIP_DOCUMENTO'
      Size = 3
    end
    object Query1NOM_REGIONAL: TStringField
      FieldName = 'NOM_REGIONAL'
      Origin = 'SOFTEPS.ACESORES.TIP_DOCUMENTO'
      Size = 50
    end
  end
  object Query2: TQuery
    DatabaseName = 'softeps'
    DataSource = DataSource1
    SQL.Strings = (
      
        'SELECT * FROM COMISIONES,EMPRESAS,AFILIADOS_COMPENSADOS,AFILIADO' +
        'S'
      'WHERE TIP_DOCUMENTO_ASE = :TIP_DOCUMENTO'
      'AND NUM_DOCUMENTO_ASE = :NUM_DOCUMENTO'
      'AND FEC_CORTE = :FECHA'
      'AND TIP_DOCUMENTO_AFI = AFI_TIPO_DOC'
      'AND NUM_DOCUMENTO_AFI = AFI_NUMERO_DOC'
      
        'AND COMISIONES.NUM_DECLARACION = AFILIADOS_COMPENSADOS.NUM_DECLA' +
        'RACION'
      'AND EMP_NUMERO_DOC = EMPRESAS.NUM_DOCUMENTO'
      'AND EMP_TIPO_DOC = EMPRESAS.TIP_DOCUMENTO'
      'AND TIP_DOCUMENTO_AFI = AFILIADOS.TIP_DOCUMENTO'
      'AND NUM_DOCUMENTO_AFI = AFILIADOS.NUM_DOCUMENTO'
      'ORDER BY FEC_CORTE,TIP_DOCUMENTO_ASE, NUM_DOCUMENTO_ASE')
    Left = 88
    Top = 14
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
      end
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptInputOutput
        Value = 0d
      end>
    object Query2TIP_DOCUMENTO_ASE: TStringField
      FieldName = 'TIP_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_ASE: TStringField
      FieldName = 'NUM_DOCUMENTO_ASE'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2TIP_DOCUMENTO_AFI: TStringField
      FieldName = 'TIP_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_AFI'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_AFI: TStringField
      FieldName = 'NUM_DOCUMENTO_AFI'
      Origin = 'SOFTEPS.COMISIONES.NUM_DOCUMENTO_AFI'
      Size = 15
    end
    object Query2PER_COMPENSACION: TStringField
      FieldName = 'PER_COMPENSACION'
      Origin = 'SOFTEPS.COMISIONES.PER_COMPENSACION'
      Size = 7
    end
    object Query2NUM_DECLARACION: TFloatField
      FieldName = 'NUM_DECLARACION'
      Origin = 'SOFTEPS.COMISIONES.NUM_DECLARACION'
    end
    object Query2FEC_CORTE: TDateTimeField
      FieldName = 'FEC_CORTE'
      Origin = 'SOFTEPS.COMISIONES.FEC_CORTE'
    end
    object Query2TIP_DOCUMENTO: TStringField
      FieldName = 'TIP_DOCUMENTO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2COD_SUCURSAL: TStringField
      FieldName = 'COD_SUCURSAL'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_ACTIVIDAD_ECO: TStringField
      FieldName = 'COD_ACTIVIDAD_ECO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 4
    end
    object Query2COD_ESTADO: TStringField
      FieldName = 'COD_ESTADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_OFICINA: TStringField
      FieldName = 'COD_OFICINA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_REGIONAL: TStringField
      FieldName = 'COD_REGIONAL'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2TIP_DOCUMENTO_ARP: TStringField
      FieldName = 'TIP_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_ARP: TStringField
      FieldName = 'NUM_DOCUMENTO_ARP'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2COD_DEPARTAMENTO: TStringField
      FieldName = 'COD_DEPARTAMENTO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_CIUDAD: TStringField
      FieldName = 'COD_CIUDAD'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2TIP_APORTANTE: TStringField
      FieldName = 'TIP_APORTANTE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2NOM_EMPRESA: TStringField
      FieldName = 'NOM_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 100
    end
    object Query2FEC_AFILIACION: TDateTimeField
      FieldName = 'FEC_AFILIACION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2DIR_EMPRESA: TStringField
      FieldName = 'DIR_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 50
    end
    object Query2TEL_EMPRESA: TStringField
      FieldName = 'TEL_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TEL_EMPRESA2: TStringField
      FieldName = 'TEL_EMPRESA2'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2URL_EMPRESA: TStringField
      FieldName = 'URL_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2EML_EMPRESA: TStringField
      FieldName = 'EML_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 50
    end
    object Query2TOT_EMPLEADOS: TStringField
      FieldName = 'TOT_EMPLEADOS'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 10
    end
    object Query2COD_TIPO_PER: TStringField
      FieldName = 'COD_TIPO_PER'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_ZONA: TStringField
      FieldName = 'COD_ZONA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_DEPARTAMENTO_PAG: TStringField
      FieldName = 'COD_DEPARTAMENTO_PAG'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_CIUDAD_PAG: TStringField
      FieldName = 'COD_CIUDAD_PAG'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_PRESENTACION_COM: TStringField
      FieldName = 'COD_PRESENTACION_COM'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_TIP_EMPRESA: TStringField
      FieldName = 'COD_TIP_EMPRESA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2TIP_DOCUMENTO_PEN: TStringField
      FieldName = 'TIP_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_PEN: TStringField
      FieldName = 'NUM_DOCUMENTO_PEN'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2AFI_NUMERO_DOC: TStringField
      FieldName = 'AFI_NUMERO_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2AFI_TIPO_DOC: TStringField
      FieldName = 'AFI_TIPO_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DECLARACION_1: TFloatField
      FieldName = 'NUM_DECLARACION_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2COD_GRUPO_ETAREO: TFloatField
      FieldName = 'COD_GRUPO_ETAREO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TIP_UPC: TStringField
      FieldName = 'TIP_UPC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2TIP_PAGO: TStringField
      FieldName = 'TIP_PAGO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2TIP_BENEFICIARIO: TStringField
      FieldName = 'TIP_BENEFICIARIO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2DIAS: TStringField
      FieldName = 'DIAS'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2SALARIO: TFloatField
      FieldName = 'SALARIO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2PORCENTAJE: TStringField
      FieldName = 'PORCENTAJE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2VAL_DEDUCCION: TFloatField
      FieldName = 'VAL_DEDUCCION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TIP_DEDUCCION: TStringField
      FieldName = 'TIP_DEDUCCION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2VALOR_UPC: TFloatField
      FieldName = 'VALOR_UPC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TIP_AFILIADO: TStringField
      FieldName = 'TIP_AFILIADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2FEC_CONSIGNACION: TDateTimeField
      FieldName = 'FEC_CONSIGNACION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2COD_PARENTESCO: TStringField
      FieldName = 'COD_PARENTESCO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_PLANILLA: TStringField
      FieldName = 'NUM_PLANILLA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 15
    end
    object Query2TIP_DOCUMENTO_COT: TStringField
      FieldName = 'TIP_DOCUMENTO_COT'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_COT: TStringField
      FieldName = 'NUM_DOCUMENTO_COT'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2EMP_TIPO_DOC: TStringField
      FieldName = 'EMP_TIPO_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2EMP_NUMERO_DOC: TStringField
      FieldName = 'EMP_NUMERO_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 15
    end
    object Query2ID_MULTIAFILIADO: TStringField
      FieldName = 'ID_MULTIAFILIADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 9
    end
    object Query2CAUSA: TStringField
      FieldName = 'CAUSA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 30
    end
    object Query2VAL_UPC: TFloatField
      FieldName = 'VAL_UPC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2EST_MULTIAFILIADO: TStringField
      FieldName = 'EST_MULTIAFILIADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DECLARACION_ANT: TFloatField
      FieldName = 'NUM_DECLARACION_ANT'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TIP_DOCUMENTO_1: TStringField
      FieldName = 'TIP_DOCUMENTO_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_1: TStringField
      FieldName = 'NUM_DOCUMENTO_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2COD_SEXO: TStringField
      FieldName = 'COD_SEXO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_TIPO_AFIL: TStringField
      FieldName = 'COD_TIPO_AFIL'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_MODALIDAD_TRA: TStringField
      FieldName = 'COD_MODALIDAD_TRA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_ESTADO_CIV: TStringField
      FieldName = 'COD_ESTADO_CIV'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2COD_ESTRATO: TStringField
      FieldName = 'COD_ESTRATO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_ESCOLARIDAD: TStringField
      FieldName = 'COD_ESCOLARIDAD'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_PROFESION: TStringField
      FieldName = 'COD_PROFESION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_ESTADO_1: TStringField
      FieldName = 'COD_ESTADO_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_OFICINA_1: TStringField
      FieldName = 'COD_OFICINA_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_REGIONAL_1: TStringField
      FieldName = 'COD_REGIONAL_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2PRI_NOMBRE: TStringField
      FieldName = 'PRI_NOMBRE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 25
    end
    object Query2SEG_NOMBRE: TStringField
      FieldName = 'SEG_NOMBRE'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 25
    end
    object Query2PRI_APELLIDO: TStringField
      FieldName = 'PRI_APELLIDO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 25
    end
    object Query2SEG_APELLIDO: TStringField
      FieldName = 'SEG_APELLIDO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 25
    end
    object Query2FEC_NACIMIENTO: TDateTimeField
      FieldName = 'FEC_NACIMIENTO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2FEC_AFILIACION_SIS: TDateTimeField
      FieldName = 'FEC_AFILIACION_SIS'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2FEC_AFILIACION_UNI: TDateTimeField
      FieldName = 'FEC_AFILIACION_UNI'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2EPS_TIP_DOC: TStringField
      FieldName = 'EPS_TIP_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2EPS_NUM_DOC: TStringField
      FieldName = 'EPS_NUM_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2COD_DEPARTAMENTO_RES: TStringField
      FieldName = 'COD_DEPARTAMENTO_RES'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 2
    end
    object Query2COD_CIUDAD_RES: TStringField
      FieldName = 'COD_CIUDAD_RES'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_BARRIO_RES: TStringField
      FieldName = 'COD_BARRIO_RES'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2COD_ZONA_1: TStringField
      FieldName = 'COD_ZONA_1'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2ACE_TIP_DOC: TStringField
      FieldName = 'ACE_TIP_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2ACE_NUMERO_DOC: TStringField
      FieldName = 'ACE_NUMERO_DOC'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2COD_DISCAPACIDAD: TStringField
      FieldName = 'COD_DISCAPACIDAD'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 1
    end
    object Query2NUM_SEMANA_COTIZA: TFloatField
      FieldName = 'NUM_SEMANA_COTIZA'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2FEC_RADICACION: TDateTimeField
      FieldName = 'FEC_RADICACION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2NUM_FORMATO_AFIL: TStringField
      FieldName = 'NUM_FORMATO_AFIL'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 10
    end
    object Query2DIR_AFILIADO_RES: TStringField
      FieldName = 'DIR_AFILIADO_RES'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 50
    end
    object Query2TEL_AFILIADO_RES: TStringField
      FieldName = 'TEL_AFILIADO_RES'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TEL_AFILIADO_RES2: TStringField
      FieldName = 'TEL_AFILIADO_RES2'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2CEL_AFILIADO: TStringField
      FieldName = 'CEL_AFILIADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2EML_AFILIADO: TStringField
      FieldName = 'EML_AFILIADO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 50
    end
    object Query2FEC_ULTIMA_NOV: TDateTimeField
      FieldName = 'FEC_ULTIMA_NOV'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
    object Query2TIP_DOCUMENTO_IPS: TStringField
      FieldName = 'TIP_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_IPS: TStringField
      FieldName = 'NUM_DOCUMENTO_IPS'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2TIP_DOCUMENTO_MED: TStringField
      FieldName = 'TIP_DOCUMENTO_MED'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_MED: TStringField
      FieldName = 'NUM_DOCUMENTO_MED'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2TIP_DOCUMENTO_ODO: TStringField
      FieldName = 'TIP_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 3
    end
    object Query2NUM_DOCUMENTO_ODO: TStringField
      FieldName = 'NUM_DOCUMENTO_ODO'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
      Size = 18
    end
    object Query2SEM_COTIZACION: TFloatField
      FieldName = 'SEM_COTIZACION'
      Origin = 'SOFTEPS.COMISIONES.TIP_DOCUMENTO_ASE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 22
    Top = 12
  end
end

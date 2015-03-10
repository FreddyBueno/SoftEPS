object frmcertincapacidades: Tfrmcertincapacidades
  Left = 200
  Top = 119
  Width = 785
  Height = 593
  VertScrollBar.Position = 62
  Caption = 'Certificado de Incapacidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 6
    Top = -50
    Width = 813
    Height = 600
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      1587.500000000000000000
      100.000000000000000000
      2151.062500000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 737
      Height = 559
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1479.020833333333000000
        1949.979166666667000000)
      BandType = rbDetail
      object qrfecha: TQRLabel
        Left = 612
        Top = 96
        Width = 65
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1619.250000000000000000
          254.000000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrfecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrape1: TQRLabel
        Left = 2
        Top = 150
        Width = 83
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          5.291666666666667000
          396.875000000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrape1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tipdocumento: TQRLabel
        Left = 408
        Top = 150
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          396.875000000000000000
          209.020833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'tipdocumento'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object numdocumento: TQRLabel
        Left = 500
        Top = 150
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          396.875000000000000000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'numdocumento'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnombreempresa: TQRLabel
        Left = 3
        Top = 209
        Width = 388
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          7.937500000000000000
          552.979166666666700000
          1026.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrnombreempresa'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrtipdocempresa: TQRLabel
        Left = 414
        Top = 189
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1095.375000000000000000
          500.062500000000100000
          153.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrtipdocempresa'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnumdocempresa: TQRLabel
        Left = 495
        Top = 189
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1309.687500000000000000
          500.062500000000100000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrnumdocempresa'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrdignostico: TQRLabel
        Left = 12
        Top = 251
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          31.750000000000000000
          664.104166666666800000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrdignostico'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrfechainicio: TQRLabel
        Left = 96
        Top = 251
        Width = 73
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          254.000000000000000000
          664.104166666666800000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrfechainicio'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrdiasletras: TQRLabel
        Left = 176
        Top = 251
        Width = 288
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          465.666666666666800000
          664.104166666666800000
          762.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrdiasletras'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnumeros: TQRLabel
        Left = 474
        Top = 251
        Width = 62
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1254.125000000000000000
          664.104166666666800000
          164.041666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrnumeros'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnumprorroga: TQRLabel
        Left = 598
        Top = 251
        Width = 84
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1582.208333333333000000
          664.104166666666800000
          222.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrnumprorroga'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnommedico: TQRLabel
        Left = 12
        Top = 282
        Width = 255
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          31.750000000000000000
          746.125000000000000000
          674.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrnommedico'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrcodigo: TQRLabel
        Left = 304
        Top = 280
        Width = 58
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          804.333333333333200000
          740.833333333333400000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrcodigo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrynoprorroga: TQRLabel
        Left = 655
        Top = 218
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1733.020833333333000000
          576.791666666666800000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrsiprorroga: TQRLabel
        Left = 609
        Top = 217
        Width = 8
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1611.312500000000000000
          574.145833333333400000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrsalariobase: TQRLabel
        Left = 28
        Top = 356
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          74.083333333333340000
          941.916666666666800000
          256.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrsalariobase'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrdiasl: TQRLabel
        Left = 154
        Top = 356
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          407.458333333333400000
          941.916666666666800000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrdiasl'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrydiasletras: TQRLabel
        Left = 218
        Top = 354
        Width = 355
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          576.791666666666800000
          936.625000000000100000
          939.270833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrydiasletras'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrvalorincapacidad: TQRLabel
        Left = 600
        Top = 354
        Width = 113
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1587.500000000000000000
          936.625000000000100000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrvalorincapacidad'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrambu: TQRLabel
        Left = 282
        Top = 106
        Width = 8
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          746.125000000000000000
          280.458333333333400000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrhosp: TQRLabel
        Left = 361
        Top = 106
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          955.145833333333500000
          280.458333333333400000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrmaternidad: TQRLabel
        Left = 434
        Top = 106
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1148.291666666667000000
          280.458333333333400000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrpervalor1: TQRLabel
        Left = 98
        Top = 500
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          259.291666666666700000
          1322.916666666667000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrpervalor1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrperiodo1: TQRLabel
        Left = 100
        Top = 480
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          264.583333333333400000
          1270.000000000000000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrperiodo1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrperiodo2: TQRLabel
        Left = 260
        Top = 482
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666800000
          1275.291666666667000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrperiodo2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrvalperiodo2: TQRLabel
        Left = 248
        Top = 504
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          656.166666666666800000
          1333.500000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrvalperiodo2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrperiodo3: TQRLabel
        Left = 446
        Top = 484
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1180.041666666667000000
          1280.583333333333000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrperiodo3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrvalperiodo3: TQRLabel
        Left = 432
        Top = 506
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          1338.791666666667000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrvalperiodo3'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrperiodo4: TQRLabel
        Left = 624
        Top = 484
        Width = 61
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1651.000000000000000000
          1280.583333333333000000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrperiodo4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrvalperiodo4: TQRLabel
        Left = 612
        Top = 504
        Width = 76
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1619.250000000000000000
          1333.500000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrvalperiodo4'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrape2: TQRLabel
        Left = 120
        Top = 150
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          396.875000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrape2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnom1: TQRLabel
        Left = 240
        Top = 150
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          396.875000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrnom1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrnom2: TQRLabel
        Left = 306
        Top = 150
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          396.875000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrnom2'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrpaternidad: TQRLabel
        Left = 502
        Top = 106
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1328.208333333333000000
          280.458333333333400000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 719
        Top = 472
        Width = 1
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          1902.354166666667000000
          1248.833333333333000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
  end
end

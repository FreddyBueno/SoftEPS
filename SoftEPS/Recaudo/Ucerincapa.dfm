object frmcertincapacidades: Tfrmcertincapacidades
  Left = 30
  Top = 65
  Width = 785
  Height = 544
  HorzScrollBar.Position = 44
  VertScrollBar.Position = 35
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
    Left = -36
    Top = -11
    Width = 813
    Height = 528
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
      100
      1397
      100
      2150
      100
      100
      0)
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
      Height = 469
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
        1240.89583333333
        1949.97916666667)
      BandType = rbDetail
      object qrfecha: TQRLabel
        Left = 520
        Top = 32
        Width = 97
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1375.83333333333
          84.6666666666667
          256.645833333333)
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
        Top = 76
        Width = 83
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          5.29166666666667
          201.083333333333
          219.604166666667)
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
        Top = 76
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1079.5
          201.083333333333
          209.020833333333)
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
        Top = 77
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1322.91666666667
          203.729166666667
          238.125)
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
        Top = 113
        Width = 388
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          7.9375
          298.979166666667
          1026.58333333333)
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
        Left = 386
        Top = 113
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1021.29166666667
          298.979166666667
          153.458333333333)
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
        Left = 435
        Top = 113
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1150.9375
          298.979166666667
          243.416666666667)
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
        Left = 4
        Top = 156
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          10.5833333333333
          412.75
          187.854166666667)
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
        Left = 112
        Top = 155
        Width = 73
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          296.333333333333
          410.104166666667
          193.145833333333)
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
        Left = 180
        Top = 154
        Width = 290
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.2083333333333
          476.25
          407.458333333333
          767.291666666667)
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
        Left = 464
        Top = 153
        Width = 62
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1227.66666666667
          404.8125
          164.041666666667)
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
        Left = 554
        Top = 165
        Width = 84
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1465.79166666667
          436.5625
          222.25)
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
        Left = 2
        Top = 210
        Width = 291
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          5.29166666666667
          555.625
          769.9375)
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
        Left = 270
        Top = 208
        Width = 58
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.4375
          714.375
          550.333333333333
          153.458333333333)
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
        Left = 615
        Top = 152
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1627.1875
          402.166666666667
          21.1666666666667)
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
        Left = 567
        Top = 151
        Width = 8
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1500.1875
          399.520833333333
          21.1666666666667)
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
        Left = 0
        Top = 273
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          0
          722.3125
          256.645833333333)
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
        Left = 118
        Top = 273
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          312.208333333333
          722.3125
          103.1875)
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
        Left = 184
        Top = 273
        Width = 355
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          486.833333333333
          722.3125
          939.270833333333)
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
        Left = 554
        Top = 273
        Width = 113
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1465.79166666667
          722.3125
          298.979166666667)
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
        Left = 136
        Top = 36
        Width = 8
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          359.833333333333
          95.25
          21.1666666666667)
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
        Left = 234
        Top = 36
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          619.125
          95.25
          21.1666666666667)
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
        Left = 321
        Top = 36
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          849.3125
          95.25
          21.1666666666667)
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
        Left = 38
        Top = 420
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          100.541666666667
          1111.25
          166.6875)
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
        Left = 40
        Top = 402
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          105.833333333333
          1063.625
          161.395833333333)
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
        Left = 218
        Top = 404
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          576.791666666667
          1068.91666666667
          161.395833333333)
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
        Left = 218
        Top = 422
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          576.791666666667
          1116.54166666667
          201.083333333333)
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
        Left = 398
        Top = 406
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1053.04166666667
          1074.20833333333
          161.395833333333)
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
        Left = 396
        Top = 422
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1047.75
          1116.54166666667
          201.083333333333)
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
        Left = 572
        Top = 402
        Width = 61
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1513.41666666667
          1063.625
          161.395833333333)
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
        Left = 568
        Top = 422
        Width = 76
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          1502.83333333333
          1116.54166666667
          201.083333333333)
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
        Top = 78
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          206.375
          105.833333333333)
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
        Left = 238
        Top = 78
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          629.708333333333
          206.375
          116.416666666667)
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
        Top = 78
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          809.625
          206.375
          116.416666666667)
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
    end
  end
end
